jQuery.noConflict();

jQuery(function($) {
// *** begin - jQuery block ***

// **************************************************************************
var ModelColumnConfigs = {
    useCase: {
        columns: ['id', 'use case name', 'overview', 'includes', 'use case level', 'comments', 'author']
    },
    requirement: {
        columns: []
    },
    glossary: {
        columns: []
    }
};

// **************************************************************************

// constructor
var ModelManager = function(data) {
    this._model = Ext.decode(data);
};

// singleton methods
jQuery.extend(ModelManager, {
    
});

// instance methods
jQuery.extend(ModelManager.prototype, {

    updatePropertyName: function(name, map) {
        var newName = map[name] ? map[name] : name;
        return newName.toLowerCase().replace(/ /g, '_');
    },
    
    updatePropertyNames: function(obj, map) {
        var that = this;
        var newObj = {};
        jQuery.each(obj, function(name, value) {
            newObj[ that.updatePropertyName(name, map) ] = value
        });
        return newObj;
    },
    
    updateAllPropertyNames: function() {
        var that = this;
        
        var useCases = this._model.useCases;
        jQuery.each(useCases, function(i, e) {
            useCases[i] = that.updatePropertyNames(e, that._model.fieldMaps.useCases);
            console.log( that.useCaseSteps(useCases[i]) );
        });
        
        var requirements = this._model.requirements;
        jQuery.each(requirements, function(i, e) {
            requirements[i] = that.updatePropertyNames(e, that._model.fieldMaps.requirements);
        });
    },
    
    getExtensionFlowByUid: function(uid, uc) {
        uid = uid.replace('#', '');
        console.log(uc);
        var result = null;
        $.each(uc.extflows, function(i, e) {
            if (e.uid == uid) {
                result = e;
            }
        });
        return result;
    },
    
    useCaseSteps: function(uc) {
        var that = this;
        var arr = [];
        $.each(uc.basicflows[0].steps, function() {
            arr.push(this.description);
            
            if (this.extensions && this.extensions.length > 0) {
                $.each(this.extensions, function() {
                    var extension = that.getExtensionFlowByUid(this.flow, uc);
                    $.each(extension.steps, function() {
                        arr.push("-- " + this.description);
                    });
                });
            }            
            
        });
        
        return arr.join("\n");
    }

});
// **************************************************************************


$.ajax({
    url: '/app/modeldata',
    success: function(data) {
        var modelManager = new ModelManager(data);
        modelManager.updateAllPropertyNames();
        console.dir(modelManager._model);
    },
    failure: function() {
    
    }
});
    
// *** end - jQuery block ***
});