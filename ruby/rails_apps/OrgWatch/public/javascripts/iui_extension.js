if (window.iui) {

    window.iui.ext = {
    
        responseTransforms: [],

        registerResponseTransform: function(cb) {
          this.responseTransforms.push(cb);
        },
        
        hasRegisteredResponseTransforms: function() {
            return responseTransforms.length > 0;
        },

        applyTransforms: function(req) {
          var transform = this.responseTransforms[0];
          return transform.fn.call(transform.scope, req);
        }
    };

} 
