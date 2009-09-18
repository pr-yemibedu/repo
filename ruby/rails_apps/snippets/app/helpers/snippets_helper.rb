module SnippetsHelper

  def html_formatted_column(record)
    record.html_formatted
  end

  def language_column(record)
    filter_link :language, record.language
  end

  def tag_list_column(record)
    record.tag_list.collect{|t| filter_link :tag, t }.join(' ')
  end

  def language_form_column(record, input_name)
    collection_select :record, :language, Snippet::AVAILABLE_LANGUAGES, :to_s, :to_s
  end

  private
  def filter_link(field, value)
    link_to_remote value,
      :url => {
        :controller => 'snippets',
        :action => 'filter',
        :field => field.to_s,
        :value => value
      }
  end

end
