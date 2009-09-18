var Application = {
  load: function() {
    new YAHOO.widget.LogReader("logger");
    UI.load();
    UI.loadShortcuts();
  }
};

var H = {
  
  removeElement: function(id) {
    var e = $(id);
    if( e ) {
      e.remove();
    }
  },

  actionLink: function(label, attributes, callback) {
    attributes.href = '#'
    var e = new Element('a', attributes).update(label);
    e.observe('click', callback);
    return e;
  }

};

var UI = {

  isGrid: function() {
  },

  isShowing: function() {
  },

  isEditing: function() {
  },

  new: function() {
    DataMgr.new(UI.renderEdit);
  },

  loadShortcuts: function() {

    // show grid
    shortcut.add('Alt+G', function() {
        UI.showGrid();
    });

    // create new
    shortcut.add('Alt+N', function() {
        UI.new();
    });

    // edit
    shortcut.add('Alt+M', function() {
        if( $('snippet-show').visible() ) {
          UI.edit( UI.getShowSnippet() );
        }
    });

    shortcut.add('Alt+Enter', function() {
      UI.saveEditSnippet();
    });

  },

  showGrid: function() {
    $w('top snippet-show').each(function(id) {
        $(id).hide();
    });
    $('snippets').show();
    UI.dataTable.render();
  },

  edit: function(o) {
    if( typeof o == "number"  || typeof o == "string" ) {
      DataMgr.get(o, UI.renderEdit);
    } else {
      UI.renderEdit(o);
    }
  },

  getShowSnippet: function() {
    var o = {};
    DataMgr.non_id_fields.each(function(f) {
      o[f] = $('snippet-show-' + f).innerHTML;
    });
    o.id = $F('snippet-show-id');
    return o;
  },

  getEditSnippet: function() {
    var o = {};
    $w('id title body language tag_list').each(function(n) {
      o[n] = $F('snippet-edit-' + n);
    });
    return o;
  },

  saveEditSnippet: function() {
    var o = UI.getEditSnippet();
    DataMgr.save(o, UI.show);
  },

  renderEdit: function(s) {
    var template = new Template( $('snippet-edit-template').innerHTML );
    $('top').update( template.evaluate(s) );
    $('snippets').hide();

    $('snippet-edit-save').observe('click', function() {
      UI.saveEditSnippet();    
    });

    $('snippet-edit-cancel').observe('click', UI.showGrid);

    $w('title body language tag_list').each(function(name) {
        $('snippet-edit-' + name).setStyle({width: '100%'});
    });

    $('snippet-edit-id').setStyle( {display: 'none'} );

    $('top').show();

    $('snippet-edit-title').focus();
  },

  show: function(o) {
    if( typeof o == "number"  || typeof o == "string" ) {
      DataMgr.get(o, UI.renderShow);
    } else {
      UI.renderShow(o);
    }
  },

  renderShow: function(s) {
    $('snippet-show-id').setValue(s.id);
    $('snippet-show-title').update(s.title);
    $('snippet-show-body').update(s.html);
    $('snippet-show-language').update(s.language);
    $('snippet-show-tag_list').update(s.tag_list);

    $$('.close').each(function(e) {
        e.observe('click', function() {
          $('snippet-show').hide();
          $('snippets').show();
        });
    });

    $('snippets').hide();
    $('top').hide();
    $('snippet-show').show();
  },

  getRecord: function(id) {
    recordSet = this.dataTable.getRecordSet();
    for(var i = 0; i < recordSet.getLength(); i++) {
      record = recordSet.getRecord(i);
      if(record.getData("id") == id) {
        return record;
      }
    }
    return null;
  },

  addRecord: function(o) {
    UI.dataTable.getRecordSet().addRecord(o, 0);
    UI.dataTable.render();
  },

  updateRecord: function(o) {
    var record = this.getRecord(o.id);
    DataMgr.grid_fields.each(function(f) {
      record.setData(f, o[f]);
      UI.dataTable.getRecordSet().updateRecordValue(record, f, o[f]);
    });
    UI.dataTable.render();
  },

  deleteRow: function(id) {
    this.dataTable.deleteRow( UI.getRecord(id) );
  },

  formatters: {
    title: function(cell, record, column, data) {
      var id = record.getData("id");
      var eid = 'title-' + id;
      H.removeElement(eid);
      var e = H.actionLink( record.getData('title'), {id: eid}, function() {
          DataMgr.get(id, UI.show);
      });
      $(cell).insert(e);
    },

    actions: function(cell, record, column, data) {
      var id = record.getData("id");
      var eid = 'actions-' + id;
      H.removeElement(eid);
     
      var e = new Element('div', {id: eid});
      $(cell).insert(e);

      $(e).insert(
        H.actionLink('show', {}, function() {
          DataMgr.get(id, UI.show);
        })
      );

      e.insert(new Element('span').update(' '));
      
      $(e).insert(
        H.actionLink('edit', {}, function() {
          UI.edit(id);
        })
      );

      e.insert(new Element('span').update(' '));

      $(e).insert(
        H.actionLink('delete', {}, function() {
          DataMgr.delete(id, function() {
            UI.deleteRow(id);
          });
        })
      );

    }
  },

  load: function() {
    var columnDefinitions = [
      {key: "title", label: "Title", sortable: true, formatter: this.formatters.title},
      {key: "language", label: "Language", sortable: true},
      {key: "tag_list", label: "Tags", sortable: true},
      {key: "id", label: "Actions", formatter: this.formatters.actions}
    ];

    this.dataSource = new YAHOO.util.DataSource("/snippets");
    this.dataSource.responseType = YAHOO.util.DataSource.TYPE_JSON;
    this.dataSource.connXhrMode = "queueRequests";
    this.dataSource.responseSchema = {
      fields: ["id", "title", "language", "tag_list"]
    };

    this.dataTable = new YAHOO.widget.DataTable("snippets",
        columnDefinitions,
        this.dataSource,
        {
          initialRequest: ".json",
          caption: "Snippets"
        }
    );
  }
};

var AjaxObject = {
  request: function(method, url, cb, params) {
    var callback = {
      success: function(o) {
        YAHOO.log("AJAX success callback called", "info");
        result = {};
        try {
          result = YAHOO.lang.JSON.parse(o.responseText);
        } catch (e) {}
        cb(result);
      }
    }
    YAHOO.log("initiating AJAX request", "info");
    YAHOO.util.Connect.asyncRequest(method, url, callback, params); 
  }
};

var DataMgr = {
  fields: $w('id title body language tag_list'),
  non_id_fields: $w('title body language tag_list'),
  grid_fields: $w('id title language tag_list'),
  requestUrlTemplate: new Template("/snippets/#{id}.json"),

  requestUrl: function(id) {
    return this.requestUrlTemplate.evaluate( {id: id} );
  },

  new: function(cb) {

    new Ajax.Request(this.requestUrl('new'), {
      method: 'get',
      parameters: {},
      onSuccess: function(t) {
        cb( t.responseText.evalJSON() );
      }
    });

  },

  create: function(o, cb) {
    params = this.buildParams(o);
    delete params['snippet[id]'];
    new Ajax.Request('/snippets.json', {
      method: 'post',
      parameters: params,
      onSuccess: function(t) {
        obj = t.responseText.evalJSON();
        cb(obj);
        UI.addRecord(obj);
      }
    });


  },

  get: function(id, cb) {

    new Ajax.Request(this.requestUrl(id), {
      method: 'get',
      parameters: {},
      onSuccess: function(t) {
        o = t.responseText.evalJSON();
        cb(o);
      }
    });

  },

  buildParams: function(o) {
    parameters = {};
    this.fields.each(function(f) {
        parameters['snippet[' + f + ']'] = o[f];
    });
    return parameters;
  },

  update: function(o, cb) {

    new Ajax.Request(this.requestUrl(o.id), {
      method: 'put',
      parameters: this.buildParams(o),
      onSuccess: function(t) {
        
        obj = t.responseText.evalJSON();
        cb(obj);
        UI.updateRecord(obj);
      }
    });

  },

  save: function(o, cb) {
    if( o.id.length > 0) {
      return this.update(o, cb)
    } else {
      return this.create(o, cb);
    }
  },

  delete: function(id, cb) {
    AjaxObject.request("DELETE", "/snippets/" + id + ".json", cb, "");
  }
};

// load libraries
var loader = new YAHOO.util.YUILoader({
  base: "/javascripts/yui_2.5.0/yui/build/",
  require: ["logger", "json", "element", "selector", "connection", "datatable"],
  loadOptional: true,
  onSuccess: function() {
    Application.load(); // application entry point
  }
});
loader.insert();
