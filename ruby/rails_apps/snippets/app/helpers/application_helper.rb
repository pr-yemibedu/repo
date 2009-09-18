# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def _pair(n, v)
    "#{n.to_s}=\"#{v.to_s}\""
  end

  def _id(o, *attr)
    name = o.class.to_s.singularize.downcase
    value = name
    if attr.size > 0
      value = "#{name}_" + attr.collect{|a| a.to_s }.join('_')
    end
    "#{value}_#{o.id}"
  end

  def _class(o, *attr)
    name = o.class.to_s.singularize.downcase
    value = name
    if attr.size > 0
      value = "#{name}_" + attr.collect{|a| a.to_s }.join('_')
    end
    value
  end

  def _attrs(o, *attr)
    _pair( :id, _id(o, *attr) ) + ' ' + _pair( :class, _class(o, *attr) )
  end

def in_place_select_editor_field(object, method, tag_options = {}, in_place_editor_options = {})
      tag = ::ActionView::Helpers::InstanceTag.new(object, method, self)
          tag_options = { :tag => "span",
                                :id => "#{object}_#{method}_#{tag.object.id}_in_place_editor",
                                                    :class => "in_place_editor_field"}.merge!(tag_options)
              in_place_editor_options[:url] = in_place_editor_options[:url] ||
                      url_for({ :action => "set_#{object}_#{method}", :id => tag.object.id })
                  tag.to_content_tag(tag_options.delete(:tag), tag_options) + in_place_select_editor(tag_options[:id], in_place_editor_options)
                    end
  
  def in_place_select_editor(field_id, options = {})
        function = "new Ajax.InPlaceSelectEditor("
            function << "'#{field_id}', "
                function << "'#{url_for(options[:url])}'"
                    function << (', ' + options_for_javascript(
                              {
                    'selectOptionsHTML' => %('#{escape_javascript(options[:select_options].gsub(/\n/, ""))}')
                            }
                                  )
                                      ) if options[:select_options]
                                          function << ')'
                                              javascript_tag(function)
                                                end


end
