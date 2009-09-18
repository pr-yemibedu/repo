$(function() {
	
    var PeopleDirectory = {
    
        directoryAttributeMap: {
            mrkdisplayname2: 'lastNameFirstName',
            uid: 'isid'
        },
        
        baseURL: function() { return '/people'; },
        
        baseSearchURL: function() { return this.baseURL() + '/search'; },
        
        toggleLoading: function() {
            $('#loading').toggle();
        },
        
        search: function(query, cb) {
            var that = this;
            that.toggleLoading();
            $.get(this.baseSearchURL() + '/' + query + '.json', function(data) {
                
                var dataObject = eval(data);
                var items = dataObject;
                
                var itemListHTML = '';
                $.each(items, function(index, item) {
                    itemListHTML += that.rowItemHTML(item);
                });
                cb(itemListHTML);
                that.toggleLoading();
            });
        },
        
        rowItemHTML: function(item) {
            return "" +
                "<li class='item-row'>" +
                    "<a href='" + this.baseURL() + "/by_id/" + item.id + ".json'>" + item.mrkdisplayname2 + "</a>" +
                "</li>";
        },
        
        
        detailFields: [
            {'title': 'Title'},
        
        {'telephoneNumber': 'Phone'},
        {'mail': 'Email'},
        
        {'mrkSuperDivisionName': 'Division'},
            {'mrkDivisionName': 'Divison'},
            {'mrkBusinessUnitName': 'Business Unit'},
            {'uid': 'ISID'},
        
            
            {'l': 'Location'},
            //{'formalsalutation': 'Saluation'},
            //{'mrkSrchFirstName': 'First'},
            //{'mrkSrchLastName': 'Last'},
            {'manager': 'Manager'},
            {'assignmentcontactcn': 'Contact'},
            {'contractagency': 'Agency'},
            {'ntdomain': 'Domain'}
        ],
        
        fieldMap: {
            telephoneNumber: 'Phone',
            mail: 'Email',
            uid: 'ISID',
            title: 'Title',
            l: 'Location'
        },
        
        iuiResponseTransform: function(req) {
            var responseText = req.responseText;
            try {
                var obj = JSON.parse(responseText);
                
                var html = "" +
                "<div id='details' title='Detail' class='panel' selected='true'>" +
                "	    <h3>" + obj.mrkdisplayname2 + "</h3>" +
                "	    <ul>";
                
                function _name(field) {
                    var result = '';
                    for (var name in field) {
                        result = name;
                    }
                    return result;
                }
                
                function _value(field) {
                    var result = '';
                    for (var name in field) {
                        result = field[name];
                    }
                    return result;                    
                }
                
                $.each(this.detailFields, function(index, field) {
                
                    if (obj[_name(field)]) {
                        
                        if ( _value(field) == 'Phone' ) {
                            obj[_name(field)] = "<a href='tel:" + obj[_name(field)] + "'>" + obj[_name(field)] + "</a>";
                        }
                        
                        if ( _value(field) == 'Email' ) {
                            obj[_name(field)] = "<a href='mailto:" + obj[_name(field)] + "'>" + obj[_name(field)] + "</a>";
                        }
                        
                    
                       html += "" + 
                       	"        <li>" +
                       	"            " + _value(field) + ": " +
                       	"            " + obj[_name(field)] +
                       	"        </li>";
             
                
                	        
                        
                    }
                });
                    html += "	    </ul>" + 
                            "	</div>";
                
                responseText = html;
            } catch(e) {
                console.log(e);
            }
            return responseText;
        }
    
    };
    
    var PD = PeopleDirectory;
    
    
    /*
    $('#search').keypress( function() {
        var that = this;
        $(this).css('color', 'black');
        
        // delay the search so the value in the search field is updated by the keypress
        setTimeout(function() {
        
            // remove all item rows
            $('#home :first-child').nextAll().remove();
        
            if ( $.trim( $(that).val() ) !== "" ) {
        
                var q = $.trim( $('#search').val() );
                
                PD.search(q, function(html) {
                    $('#home').append(html);
                });
            }
        }, 100);
    });
    */
    
    $('#search').delayedObserver(0.5, function(value, object) {
        var that = this;
        $(this).css('color', 'black');        
        
        // remove all item rows
        $('#home :first-child').nextAll().remove();
    
        var q = $.trim(value);
        if (q !== "") {   
            PD.search(q, function(html) {
                $('#home').append(html);
            });
        }           
    });

    // clear out search dirctions text once search field gains focus
    // this only happens once (note 'one' function)
    $('#search').one('focus', function() {
    	$(this).val('');
    	$(this).toggleClass('input-message');
    });
    
    if (window.iui && window.iui.ext) {
        window.iui.ext.registerResponseTransform( {fn: PD.iuiResponseTransform, scope: PD} );
    }

});