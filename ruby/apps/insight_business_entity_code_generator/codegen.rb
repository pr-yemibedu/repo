require "erb"
require "rexml/document"
require "ostruct"
require "pp"

def template
<<-EOF
using System;
using System.Collections.Generic;
using System.Text;

namespace Merck.SFA.Insight.BusinessEntities
{
    public class <%= class_def.name %> : InsightBaseBE
    {
        public class Properties
        {
			<% class_def.properties.each { |field| %>
            public const string <%= field.name %> = "<%= field.name %>";
            <% } %>
        }

		<% class_def.properties.each { |field| %>
        private string _<%= CamelCase(field.name) %> = <%= DefaultValueForType(field.type_name) %>;

        public <%= field.type_name %> <%= field.name %>
        {
            get { return _<%= CamelCase(field.name) %>; }
            set
            {
                _<%= CamelCase(field.name) %> = value;
                NotifyPropertyChanged(Properties.<%= field.name %>);
            }
        }
        <% } %>
        
        public override bool Equals(object obj)
        {
            <%= class_def.name %> target = obj as <%= class_def.name %>;
            if (target == null) return false;

            return 
            <% class_def.properties.each { |field| %>
				&& this._<%= CamelCase(field.name) %> == target._<%= CamelCase(field.name) %>
            <% } %>
        }

        public override int GetHashCode()
        {
            return 
            <% class_def.properties.each { |field| %>
				^ this._<%= CamelCase(field.name) %>.GetHashCode()
            <% } %>;
        }        
    }
}
EOF
end

def classes_xml
<<-EOF
<classes>
  <class name="CustomerBE">
    <property type="int">Id</property>
    <property type="string">Name</property>
    <property type="CustomerLocationListBE">CustomerLocationList</property>
    <property type="CustomerSpecialtyBE">CustomerSpecialty</property>
  </class>

  <class name="CallBE">
    <property type="int">FieldActivityAccountNumber</property>
    <property type="int">CallNumber</property>
  </class>
  
  <class name="KeywordBE">
    <property type="string">Name</property>
    <property type="string">Value</property>
  </class>
</classes>
EOF
end

def CamelCase(s)
  s[0,1].downcase + s[1..-1]
end

def DefaultValueForType(type)
  if type =~ /string/
    "string.Empty"
  elsif type =~ /int|short/
    "0"
  else
    "new #{type}()"
  end
end

classes = []
doc = REXML::Document.new classes_xml
doc.elements.each("classes/class") { |class_node|
  class_def = OpenStruct.new
  class_def.name = class_node.attributes["name"]
  class_properties = []
  class_node.elements.each("property") { |property|
    property_def = OpenStruct.new
    property_def.name = property.text
    property_def.type_name = property.attributes["type"]
    class_properties << property_def
  }
  class_def.properties = class_properties
  classes << class_def
}


classes.each { |class_def|
  erb = ERB.new( template, nil, "-" )
  print erb.result( binding )
}