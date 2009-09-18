Ext.BLANK_IMAGE_URL = 's.gif';

Ext.namespace('Sample');

Sample.app = function () {

    // private variables
    var submitButton;
    
    // private functions
    var submitButtonHandler = function () {
        alert('You clicked submit');
    };
    
    // public space
    return {
    
        // public properties
        submitButtonText: 'Click Me',
        
        // public methods
        init: function () {
            
            submitButton = new Ext.Button('submitButton',
                {
                    text: this.submitButtonText + " " + this.helper(),
                    handler: submitButtonHandler
                }
            );
      
        },
        
        helper: function () {
            return "now";
        }
    };
    
}();

Ext.onReady(
    Sample.app.init, // run init method when document is fully loaded
    Sample.app // run init method in the scope of Sample.app
);