/*
 * Ext JS Library 1.1
 * Copyright(c) 2006-2007, Ext JS, LLC.
 * licensing@extjs.com
 * 
 * http://www.extjs.com/license
 */

Ext.BLANK_IMAGE_URL = 'lib/ext/resources/images/default/s.gif';
Ext.namespace('Example');
Example.app = function(){
	
    return {
		init: function() {
			alert('Application successfully initialized');
		}
	};
}();

Ext.onReady(Example.app.init, Example.app);
