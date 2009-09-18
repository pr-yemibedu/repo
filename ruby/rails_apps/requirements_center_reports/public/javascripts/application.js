//jQuery.noConflict();

var app = {};
app.mountPath = '';
app.topToolbar = new Ext.Toolbar();
app.bottomToolbar = new Ext.Toolbar();
app.store = {};
app.searchTextField = {};

app.updateStatusMessage = function(message) {
	if (!this._loadMask) {
		this._loadMask = new Ext.LoadMask(Ext.getBody(), {msg: message});
		this._loadMask.enable();
	} else {
		this._loadMask.msg = message;
	}
	this._loadMask.show();
};

app.hideStatusMessage = function() {
	if (this._loadMask) {
		this._loadMask.msg = ''; //clear out message
		this._loadMask.hide();
	}
};

app.systemToUserFriendlyNameMap = {
    'id': 'id',
    'NAME_ID': 'use case name',
    'OVERVIEW_ID': 'overview',
    'USE_CASE_LEVEL_ID': 'use case level',
    'Field1': 'author'
};

app.useCaseColumnNameOrder = [
	'uid',
	'id',
	'use case name',
	'overview',
	'status',
	'author',
	'includes',
	'comments'
];

app.requirementColumnNameOrder = [
];

if ( location.pathname.match(/\/rc(.*)/) ) {
  app.mountPath = '/rc';
}

app.modelUrl = app.mountPath + '/app/proxy';
app._url = function(s) { return app.mountPath+ '/app/' + s; }

Date.patterns = {
    ISO8601Long:"Y-m-d H:i:s",
    ISO8601Short:"Y-m-d",
    ShortDate: "n/j/Y",
    LongDate: "l, F d, Y",
    FullDateTime: "l, F d, Y g:i:s A",
    MonthDay: "F d",
    ShortTime: "g:i A",
    LongTime: "g:i:s A",
    SortableDateTime: "Y-m-d\\TH:i:s",
    UniversalSortableDateTime: "Y-m-d H:i:sO",
    YearMonth: "F, Y"
};

function _r(s) { return s.replace(/ /g, '_'); }
function _t(f) { return '<p><b>' + f + '</b>: {'+ _r(f) + '}</p><br/>'; }
function _ta(f) { return '<p><b>' + f + '</b>:' + '</p><p>' + '{' + _r(f) + '}</p><br/>'; }

function toUserFriendlyName(s) {
    var parts = s.split('_');
    
    // no delimiters, so return string that was passed in
    if (parts.length == 1) {
        return s.toLowerCase();
    }
    
    // strip off _ID portion
    if (parts[parts.length - 1].toLowerCase() == 'id') {
        parts.pop();   
    }

    var userFriendlyName = '';
    var i;
    for (i=0; i<parts.length; i++) {
        var part = parts[i];
        parts[i] = part.charAt(0).toUpperCase() + part.substr(1).toLowerCase();
    }
    return parts.join(' ');
}

function keys(obj) {
    var result = [];
    jQuery.each(obj, function(name, value) {
        result.push(name);
    });
    return result;
}

function createRecord(data) {
    var arr = [];
    var key_names = keys(data[0]);
    var i;
    for (i = 0; i < key_names.length; i++) {
        arr.push({name: key_names[i], type: 'string'});
    }
    
    var record = Ext.data.Record.create(arr);
    return record;
}

function createJsonStore(data, sortInfo) {
    var store = new Ext.data.JsonStore({
        data: data,
        root: '',
        reader: new Ext.data.JsonReader({root: ''}, createRecord(data) ),
        fields: keys(data[0]),
        proxy: new Ext.data.MemoryProxy(data),
        sortInfo: sortInfo
    });
    return store;
}

function createColumnModel(keyNames) {
    var columns = [];
    
	var i;
    for (i = 0; i < keyNames.length; i++) {
        columns.push({header: toUserFriendlyName(keyNames[i]), width: 75, sortable: true, dataIndex: keyNames[i]});
    }    
    
    return new Ext.grid.ColumnModel(columns);
}


var Model = {

    load: function(modelUrl, callback) {
      var that = this;
      
      $.ajax({
        url: modelUrl,
        dataType: 'xml',
        success: function(doc) {
          that.parse(doc, callback);
        },
        error: function(xhr, status) {
          Ext.Msg.alert('Error', 'Failed to fetch file: ' + status);
        }        
      });
      
    },

    parse: function(doc, callback) {
        this._doc = doc;
        this._systemAndCustomAttributes = this.getSystemAndCustomAttributes(this._doc);
        this.parseAttributeNameMappings(this._doc, 'PDMGenericUseCase');
		this._useCases = this.parseUseCases(this._doc);
		this._requirements = this.parseRequirements(this._doc);
        
        if (callback) {
          callback( { useCases: this._useCases, requirements: this._requirements } );
        }
    },
    
    getSystemAndCustomAttributes: function(doc) {
      return {
        system: this.getAttributesByType('system', doc),
        custom: this.getAttributesByType('custom', doc)
      };
    },

    getAttributesByType: function(type, doc) {
      var result = {};
      var nodeMetas = [];

      jQuery(type + 'Meta NodeMeta', doc).each(
        function(index1, element) {
          var _e = jQuery(this);
          var nodeType = _e.attr('nodeType');
          var attributes = jQuery('attrMeta', _e);
          if (attributes.length == 0) {
            return;
          }

          var attrMetas = []
          attributes.each(
            function(index2, element) {
              var _e1 = jQuery(this);
              var name = _e1.attr('attrName');
              var field = _e1.attr('attrField');
              var values = [];
              jQuery('validValues', _e1).each(
                function() {
                  values.push( jQuery(this).attr('value') );
                }
              );
              attrMetas.push( {name: name, field: field, values: values} );
              nodeMetas.push( attrMetas );
            }
          );

        }
      );

    return nodeMetas;
    },
    
    getAttributeValueByPath: function(path, attrs) {
      var parts = path.match(/#\/\/@extension\/@mixed.3\/@(.+)Meta\/@NodeMeta.(.+)\/@attrMeta.(.+)\/@validValues.(.+)/);
      var type = parts[1];
      var nodeMetaIndex = parts[2];
      var attrMetaIndex = parts[3];
      var valueIndex = parts[4];
      return attrs[type][nodeMetaIndex][attrMetaIndex].values[valueIndex];
    },    

    parseAttributeNameMappings: function(doc, nodeType) {
        var fieldToNameMapping = {};
        $.each(['systemMeta NodeMeta',
                'customMeta NodeMeta'],
            function(i, expression) {
                $(expression, doc).each(function(i2, e) {
                    var _e = $(e);
                    if (_e.attr('nodeType') == nodeType) {
                        $('attrMeta', _e).each(function(i, a) {
                            var _a = $(a);
                            var field = _a.attr('attrField');
                            var name = _a.attr('attrName');
                            fieldToNameMapping[field] = name;
                        });
                    }
                });
            }
        );
        return fieldToNameMapping;
    },
    
    parseUseCases: function(doc) {
      var that = this;
        var useCases = [];
		var useCaseCount = $('useCases', doc).length;
        $('useCases', doc).each(function(index, useCaseElement) {
			
			app.updateStatusMessage('Loading Use Case # ' + (index + 1) + ' of ' + useCaseCount + ' ...');
			
            var _useCaseElement = $(useCaseElement);
            var useCase = {};
            
            // use case id
            useCase['id'] = _useCaseElement.attr('prefix') + _useCaseElement.attr('index'); // e.g. UC12
            
            // extract system & custom use case attribute values
            $.each(['systemAttrSet', 'customAttrSet'], function(i, attributeSetName) {
                $.extend(useCase, that.parseAttributeSet(useCaseElement, attributeSetName) );
            });
            
            useCase = that.cleanUseCase(useCase, app.systemToUserFriendlyNameMap);
            
            // this needs to come after the cleanUseCase function above
            useCase['uid'] = _useCaseElement.attr('uid');
            
            var includes = [];
            $('graphicsContexts includes', useCaseElement).each(function() {
              var include = $(this).attr('useCase');
              includes.push( include.replace('#', '') );
            });
            useCase.includes = includes.join(',');            
            
            $.extend(useCase, that.parseThreads(useCaseElement))
            useCases.push(useCase);
        });
        
        useCases = that.addUseCaseStatus(useCases);
		
		// TODO: this is a hack because adjustIncludes needs this set
		this._useCases = useCases; 
        
		useCases = that.adjustIncludes(useCases);    
        
        return useCases;
    },
    
    parseUseCaseSteps: function(ucEl) {
      var useCaseSteps = {};
      
      // precondition
      $.extend(useCaseSteps, {'precondition': $('useCases proxy preCondition description[value]', ucEl).attr('value') } );
      
      // postcondition
      $.extend(useCaseSteps, {'postcondition': $('useCases proxy postCondition description[value]', ucEl).attr('value') });
    },
    
    cleanUseCase: function(useCase, nameMap) {
      var newUseCase = {};
      for(var key in nameMap) {
          if (useCase.hasOwnProperty(key)) {
              newUseCase[ nameMap[key] ] = useCase[key];
          }
      }
      return newUseCase;
    },
    
    threadsToHtml: function(threads) {
      var html = '';
      
      Ext.each(threads, function(item, index, allItems) {
          html = html + 'thread title: ' + item.title + "\n" +
          'author: ' + item.author + "\n";
          
          var comments = '';
          Ext.each(item.comments, function(item2, index2, allItems2) {
              comments = comments + item2 + "\n";
          });
          
          html = html + ( (comments == '') ? '' : "comment(s):\n" + comments ) + "\n";
      });
      
      return html;
    },

    parseThreads: function(e) {
      var that = this;
      var result = '';
      var threads = [];
      $('threads', e).each(function(i, e) {
          var _e = $(e);
          var author = _e.attr('author');
          var timestamp = _e.attr('timestamp');
          var title = $('name', e).attr('value');
          var comments = [];
          $('comments text', e).each(function(i2, e2) {
              comments.push( $(e2).attr('value') );
          });
          threads.push({title: title, author: author, timestamp: timestamp, comments: comments});
      });
      return {comments: that.threadsToHtml(threads)};
    },
    
    addUseCaseStatus: function(useCases) {
      var result = [];
      var i;
      for (i = 0; i < useCases.length; i++) {
          useCases[i]['status'] = useCases[i]['use case level'] == '10' ? 'in progress' : '';
          result.push(useCases[i]);
      }
      return result;
    },
    
    adjustIncludes: function(useCases) {
      var that = this;
      var i;
      for (i = 0; i < useCases.length; i++) {
        var useCase = useCases[i];
        var uids = useCase.includes.split(',');
        
        var include_names = [];
        var j;
        for (j = 0; j < uids.length; j++) {
          var uid = uids[j];
          var include_name = that.getUseCaseNameByUid(uid);
          include_names.push(include_name);
        }
        useCase.includes = include_names.sort().join(',');
      }
      return useCases;
    },

    getUseCaseNameByUid: function(uid) {
		var useCases = this._useCases;
      var name = '';
      var i;
      for (i = 0; i < useCases.length; i++) {
        var useCase = useCases[i];
        if ( $.trim(useCase.uid) == $.trim(uid) ) {
          name = useCase['use case name'] || useCase['NAME_ID'];
        }
      }
      return name;
    },

    parseRequirements: function(doc) {
        var that = this;
        var requirements = [];
		var requirementCount = $('requirement requirements', doc).length;
        $('requirement requirements', doc).each(function(index, item) {
			
			app.updateStatusMessage('Loading Requirement # ' + (index + 1) + ' of ' + requirementCount + ' ...');
            
			var requirement = {};
            
            requirement['uid'] = $(this).attr('uid');
            
            requirement['id'] = $(this).attr('prefix') + $(this).attr('index');
			
            $.extend(requirement, that.parseAttributeSet(this, 'systemAttrSet') );
			$.extend(requirement, that.parseAttributeSet(this, 'customAttrSet') );

			requirement['incoming traces'] = that.getTracesByName('incomingTraces', $(this) );
			requirement['outcoming traces'] = that.getTracesByName('outcomingTraces', $(this) );
            
			var map = {
				Field1: 'Category',
				Field2: 'Source',
				Field3: 'Existing in',
				Field4: 'In Scope for NCM CI'
			};
			
			for (var key in map) {
				if (requirement[key]) {
					var val = requirement[key];
					delete requirement[key];
					requirement[ map[key] ] = val;
				} else {
					requirement[ map[key] ] = ''; // zero out value
				}
			}
			
            requirements.push(requirement);
        });
        return requirements;
    },
	
	getTracesByName: function(name, _e) {
		var that = this;
		var tracesString = '';
		var traces = _e.attr(name);
		if (traces) {
			traces = traces.replace(/#/g, '');
			var uids = traces.split(' ');
			var names = [];
			var i;
			for (i = 0; i < uids.length; i++) {
				names.push( that.getUseCaseNameByUid(uids[i]) );
			}
			tracesString = names.sort().join(',');
		}
		return tracesString;	
	},
    
    // ----------------------------------------------------------------------
    // Helper functions
    parseAttributeSet: function(element, name) {
      var that = this;
        var attributes = {};
        $(name + ' attrs', element).each(function(index, attribute) {
            var name = $(attribute).attr('name');
            var value = $('linkableString', attribute).attr('value');
            
          if (value == 'INCORRECT VALUE') {
            var extensionPath = $(attribute).attr('attrValue');
            attributes[name] = that.getAttributeValueByPath( extensionPath, that._systemAndCustomAttributes );
          } else {
            attributes[name] = value;
          }            
            
        });
        return attributes;
    }

};

jQuery(function($) {

	app.updateStatusMessage('Loading SFA Model file.  It can take up to 45 seconds to load ...');

	window.app = app;
    
    app.showItem = function(data) {
        var d = {};
        Ext.apply(d, data);
        for (var key in d) {
            d[key.replace(/ /g, '_')] = d[key];
        }
        
        d['comments'] = d['comments'].replace(/\n/g, "<br/>");
                     
        var tpl = new Ext.XTemplate(
            _t('use case name'),
            _ta('overview'),
            _t('use case level'),
            _t('status'),
            _t('author'),
            _ta('comments')
        );
        var html = tpl.apply(d);
        
        var win = new Ext.Window({
            title: d['use case name'],
            layout      : 'fit',
            width       : 600,
            height      : 500,
            closeAction :'hide',
            plain       : true,
            autoScroll: true,
            html: html,
            buttons: [{
                text: 'Close',
                handler: function(){
                   win.hide();
                }
            }]
       });
           
       win.show();

    };
    
    app.addGridEventHandlers = function(grid) {
        grid.on('rowdblclick', function(grd, index, e){
		    data = grd.getSelectionModel().getSelected().data;
		    app.showItem(data);
	    });
    };
    
    app.exportToExcel = function(store) {
        var records = store.getRange();
        var data = [];
        Ext.each(records, function(item, index, allItems) {
         data.push(item.data);
        });

        Ext.Ajax.request({
            url: app._url('export_to_excel'),
            method: 'POST',
            jsonData: data,
            success: function(response,config) {
                //o = Ext.util.JSON.decode(response.responseText);
                location.href = app._url('export_to_excel?report_id=') + response.responseText;
            }
        });         
    };
     
     app.loginForm = new Ext.FormPanel({
           labelWidth: 75, // label settings here cascade unless overridden
           url:'save-form.php',
           frame:true,
           title: 'Login',
           bodyStyle:'padding:5px 5px 0',
           width: 350,
           defaults: {width: 230},
           defaultType: 'textfield',

           items: [{
                   fieldLabel: 'User Name',
                   name: 'username',
                   allowBlank:false
               },{
                   fieldLabel: 'Password',
                   name: 'password',
                   inputType: 'password',
                   allowBlank:false
               }
           ],
           buttons: [{
               text: 'Login',
               handler: function() {
                   Ext.Ajax.request({
                       url: app._url('login'),
                       method: 'POST',
                       jsonData: app.loginForm.getForm().getValues(),
                       success: function(response,config) {
                           //o = Ext.util.JSON.decode(response.responseText);
                       }
                   });
                                      
                   addGrid();
               }
           },{
               text: 'Cancel'
           }]
      });
      
      Model.load(app.modelUrl, function(model) {
          var useCases = model.useCases;
          app.store = createJsonStore(useCases,  {field: 'use case name', direction: 'ASC'});

          app.grid = new Ext.ux.EnhancedGridPanel({
              store: app.store,
              cm: createColumnModel(app.useCaseColumnNameOrder),
              title: 'Use Cases',
              tbar: [{text: 'Export to Excel', handler: function() { app.exportToExcel(app.store); } }]
          });
          
          app.requirementsData = model.requirements;
          app.requirementsStore = createJsonStore(app.requirementsData, null);
          app.requirementsGrid = new Ext.ux.EnhancedGridPanel({
              store: app.requirementsStore,
              cm: createColumnModel( keys(app.requirementsData[0]) /* app.requirementColumnNameOrder */),
              title: 'Requirements',
              tbar: [{text: 'Export to Excel', handler: function() { app.exportToExcel(app.requirementsStore); } }]
          }); 
          
          app.addGridEventHandlers(app.grid);
          
          app.tabPanel = new Ext.TabPanel({
            activeTab: 0,
            header: true,
            items: [app.grid, app.requirementsGrid]
          });

          app.viewport = new Ext.Viewport({
      		layout: 'border',
      		defaults: {
      		    //activeItem: 0
      		},
      		items: [{
      		   region: 'center',
      		   id: 'center-panel',
      		   useShim:true,
      		   layout: 'fit',
      		   split: false,
      		   border:false,
      		   title: 'Requirements Center Model - SFA.ucmodel (as of ' + (new Date()).format('Y-m-d h:i:s A') + ')',
      		   //items: [ app.grid ]
             items:[app.tabPanel]
      		}]
      	 });
      	 
      	 app.hideStatusMessage();
      	           
      });     	 
	     
});