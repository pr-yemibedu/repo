Ext.onReady(function(){
  Ext.QuickTips.init();
  
  var ws = {}; // Workspace
  ws.ItemList = {};
  ws.ItemView = {};
  ws.ItemEdit = {};
  ws.ItemSearch = {};
  
  // ************************************************************************
  // item actions
  ws.viewItem = function () {
  	data = ws.ItemList.getSelectionModel().getSelected().data;
	ws.showItemView();
	ws.ItemView.setTitle(data.title);
	contentEl = ws.ItemView.body.first();
	if (contentEl) {
		contentEl.remove();
	}
	ws.ItemView.body.createChild('<div>' + data.body + '</div>');
	toolbar = ws.ItemView.getTopToolbar();
	
	// remove any previous items from the toolbar
	toolbar.items.each(function(o) {
		o.destroy();
	})
	//toolbar.add({xtype: 'tbfill'});
	
	// show items tags
	toolbar.addText('tags: ' + data.tags);
  };
  
  ws.addItem = function(){
  	form = ws.ItemEdit.getForm();
  	form.newItem = true;
  	form.setValues({
  		title: '',
  		body: ''
  	});
  	ws.showItemEdit();
  };
  
  ws.editItem = function(){
  	data = ws.ItemList.getSelectionModel().getSelected().data;
  	form = ws.ItemEdit.getForm();
  	form.newItem = false;
  	form.setValues({
  		title: data.title,
  		body: data.body
  	});
  	ws.showItemEdit();
  }
  
  ws.deleteItem = function(){
  	record = ws.ItemList.getSelectionModel().getSelected();
  	
  	Ext.Msg.show({
  		title: 'Delete item?',
  		msg: 'Are you sure you wish to delete "' + record.data.title + '"',
  		buttons: Ext.Msg.YESNOCANCEL,
  		fn: function(buttonId){
  			if (buttonId == 'ok' || buttonId == 'yes') {
  				ws.ItemStore.remove(record);
  			}
  		},
  		icon: Ext.MessageBox.QUESTION
  	});
  }
  // ************************************************************************
    
  ws.ItemListKeyMap = {};
  
  ws.ItemView = new Ext.Panel({
  	layout:'fit',
    //width: 800,
    height: 600,
	autoScroll: true,
	header: true,
	footer: true,
	tbar: new Ext.Toolbar({}),
	//title: 'place holder',
	//html: '<div>place holder</div>',
	buttons: [
		{
			text: 'Edit',
			handler: function() {
				ws.editItem();
			}
		},
		{
			text: 'Close',
			handler: function(){
				ws.showItemList();
			}
		}
	]
  });
  
  //ws.ItemView.render(Ext.getBody());
  
  // ************************************************************************
  // view navigation convienence functions
  ws.hideAll = function() {
  	ws.ItemList.hide();
	ws.ItemView.hide();
	ws.ItemEdit.hide();
  };
  
  ws.showItemList = function() {
  	ws.hideAll();
	ws.ItemList.show();
	ws.ItemList.getGridEl().focus(); // set focus to the grid so navigation and shortcut keys work
  };
  
 ws.showItemView = function() {
  	ws.hideAll();
	ws.ItemView.show();
  };
  
 ws.showItemEdit = function() {
  	ws.hideAll();
	ws.ItemEdit.show();
	form = ws.ItemEdit.getForm();
	
	// set focus to the field most likely to be edited
	if (form.newItem) { // new item, so add title 1st
		form.findField('title').focus();
	} else { // existing item, so edit body
		form.findField('body').enable();
		form.findField('body').focus();
	}
  };  
  
  ws.focusItemSearch = function() {
  	ws.ItemSearch.focus();
	ws.ItemSearch.setValue(''); //clear search
  }; 
  
  // ************************************************************************  
  // define item data source and it's structure
  ws.ItemStore = new Ext.data.JsonStore({
    url: 'item.data.js',
    root: 'items',
    fields: ['id', 'title', 'body', 'tags']
  });
  
  // define the schema of our item records
  ws.ItemRecord = Ext.data.Record.create([
    {name: 'id', type: 'string'},
    {name: 'title', type: 'string'},
    {name: 'body', type: 'string'},
    {name: 'tags', type: 'string'}
  ]);
  
  // load item data
  ws.ItemStore.load();
  
  ws.ItemColumnModel = new Ext.grid.ColumnModel([
    {id:'id', hidden: true, header: "Id", width: 160, sortable: true, dataIndex: 'id'},
    {header: "Title", width: 75, sortable: true, dataIndex: 'title'},
    {header: "Body", width: 75, sortable: true, dataIndex: 'body'},
    {header: "Tags", width: 75, sortable: true, dataIndex: 'tags'}
  ]);
  
  // create the Grid
  ws.ItemList = new Ext.grid.GridPanel({
    store: ws.ItemStore,
    cm: ws.ItemColumnModel,
    sm: new Ext.grid.RowSelectionModel({singleSelect:true}),
    stripeRows: true,
    autoExpandColumn: 'title',
	width: 800,
    height: 600,
    title:'Personal Knowledge Base',
    frame: false,
    viewConfig: {
      forceFit: true
    },
    tbar: [
		{
			text: 'View',
			handler: ws.viewItem
		},
      {
        text: 'Add',
        handler: ws.addItem
      },
	   /*
	  {
	  	text: 'show',
		handler: function() {
			data = ws.ItemList.getSelectionModel().getSelected().data;
			alert( Ext.util.JSON.encode(data) );
			ws.showItemView();
	  	}
	 },
      {
        text: 'Collapse',
        handler: function() {
          ws.ItemList.collapse(true);
        }
      },
      {
        text: 'append rows',
        handler: function() {
          ws.ItemStore.loadData({
            items: [
              {id: '33', title: 'hey', body: 'qwerty', tags: 'we we'},
              {id: '34', title: 'school', body: 'saint stans', tags: 'one two three'}
            ]
          }, true);
        }
      },
      */
      {
        text: 'Edit',
        handler: ws.editItem
      },
	  {
	  	text: 'Delete',
		handler: ws.deleteItem
	  }      
    ]
  });
  
  	// TODO: put item show logic here
  	ws.ItemList.on('rowdblclick', function(grid, index, e){
		ws.viewItem();
	});
	
  	// **** This is a HACK - figure out how to do this right
	// Keyboard shortcuts for ItemList
 	ws.ItemList.getSelectionModel().on('rowselect', function(sm, rowIdx, r) {
		ws.ItemListKeyMap = new Ext.KeyMap(ws.ItemList.getGridEl(), [
			{
				key: "vV",
				fn: ws.showItemView
			},
			{
				key: "aA",
				fn: ws.addItem
			},
			{
	 			key: "eE",
				fn: ws.editItem,
			},
			{
				key: "dD",
				fn: ws.deleteItem
			},
			{
				key: "sS",
				fn: ws.focusItemSearch
			}
		]);
		
		// ensure the key doesn't propagate up (e.g. it was getting put in a text field etc.)
		ws.ItemListKeyMap.stopEvent = true;
		
	  	ws.ItemList.getGridEl().on('keypress', function(e){
			if (e.getKey() == Ext.EventObject.ENTER) {
				ws.viewItem();
				e.stopEvent();
			}	
		});	
		
	});
  

  ws.ItemList.render(Ext.getBody());
  ws.ItemList.getSelectionModel().selectFirstRow();
  
  var toolbar = ws.ItemList.getTopToolbar();
  toolbar.add({xtype: 'tbfill'}); // forces search to be right aligned (ref Ext.Toolbar.Fill)
  toolbar.addText('search:');
  ws.ItemSearch = new Ext.form.TextField({});
  ws.ItemSearch.enableKeyEvents = true;
  ws.ItemSearch.on('keypress', function(textField, e) {
  	if (e.getKey() == Ext.EventObject.TAB) {
			ws.ItemList.getSelectionModel().selectFirstRow();
			//e.stopEvent();
	} else {
		setTimeout(function(){
			ws.ItemStore.clearFilter();
			ws.ItemStore.filter('title', /* search field */ ws.ItemSearch.getValue(), /* search string */ true /* match any part of string */, false /*case sensitive */);
		}, 250);
	}
  });
  
  toolbar.addField( ws.ItemSearch );
  
ws.ItemEdit = new Ext.FormPanel({
        labelAlign: 'top',
        frame:true,
        title: 'Edit Item',
        bodyStyle:'padding:5px 5px 0',
        //width: 800,
		height: 600,
        items: [{
            layout:'column',
            items:[{
                layout: 'form',
                items: [{
                    xtype:'textfield',
                    fieldLabel: 'Title',
                    name: 'title',
                    anchor:'95%'
                }]
              }] 
        },{
            xtype:'htmleditor',
            id:'body',
			name: 'body',
            fieldLabel:'Body',
            height:200,
            anchor:'98%'
        }],

        buttons: [{
            text: 'Save',
            handler: function() {
				form = ws.ItemEdit.getForm();
				item = form.getValues();
				if (form.newItem) {
					i = new ws.ItemRecord({
						id: 99,
						title: item.title,
						body: item.body,
						tags: '1 2 3'
					});
					ws.ItemStore.insert(0, i);
				}
				else {
					record = ws.ItemList.getSelectionModel().getSelected();
					record.set('title', item.title);
					record.set('body', item.body);
					record.commit();
				}
				
            	ws.showItemList();
            }            
        },{
            text: 'Cancel',
            handler: function() {
            	ws.showItemList();
            }
        }]
    });

	// us viewport to fill screen with current view (component)
	ws.Viewport = new Ext.Viewport({
		layout: 'border',
		items: [{
		   region: 'center',
		   id: 'center-panel',
		   useShim:true,
		   layout: 'fit',
		   split: false,
		   border:false,
		   items: [ ws.ItemList, ws.ItemView, ws.ItemEdit ]
		}]
	 });
	 
	 // set focus to search since that will most likely be used 1st
	 ws.focusItemSearch();
  
});