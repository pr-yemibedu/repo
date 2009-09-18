require 'mediacloth'

class Snippet < ActiveRecord::Base
  #before_save :update_html_formatted

  acts_as_taggable
  acts_as_versioned
  acts_as_ferret :fields => {
    :title => {:boost => 2},
    :language => {:boost =>0},
    :body => {:boost => 0},
    :tags_string => {:boost => 0}
  }

  DEFAULT_LANGUAGE = 'textile'
  AVAILABLE_LANGUAGES = (CodeHighlighter::LANGUAGES << DEFAULT_LANGUAGE << 'mediawiki').sort

  def initialize(args = {})
    super(args)
    language = 'textile' # default to plain text
  end

  # returns a concatenated list of tags for this snippet
  # this is used to support searching with ferret
  def tags_string
    tag_list.join(' ')
  end

  def atts_to_hash
    {
      :id => id,
      :title => title,
      :body => body,
      :tag_list => tags_string,
      :language => language,
      :html => html_formatted,
      :updated => updated_at
    }
  end

  def html_formatted
    body_to_html
  end

  def body_to_html
    s = body

    # running the code highlighter is expecnsize, so only do it when neccessary
    if body and language
      if language == 'textile'
        s = RedCloth.new(body).to_html
      elsif language == 'mediawiki'
        
        begin
          s = MediaCloth::wiki_to_html(body.gsub(":", ""))
        rescue Exception => e
        end
        
      else # pyhton pygments handles the rest
        s = CodeHighlighter.highlight(body, language)
      end
    end
    s
  end

  def update_html_formatted
    self.html_formatted = body_to_html
  end

end
