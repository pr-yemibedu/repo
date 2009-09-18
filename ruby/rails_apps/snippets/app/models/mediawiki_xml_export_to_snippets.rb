require 'rubygems'
require 'rexml/document'
require 'mediacloth'
require 'pp'

class MediawikiXmlExportToSnippets

  def self.import
    Snippet.find(:all).each { |s| s.destroy }

    file = File.new(ENV['IMPORT_PATH'])
    doc = REXML::Document.new file
    category_regex = /\[\[Category:(.*)\]\]/
    doc.elements.each("*/page") do |page|
      title = page.elements["title"].text
      body = page.elements["*/text"].text
  
      # find category tags and make them *regular* tags
      matches = body.scan(category_regex)
      tags = []
      tags = matches.flatten.collect{ |m| m.downcase.gsub(" ", "_") } if matches

      # trim the category lines off the bottom of the body
      body = body.split("\n").find_all { |l| l !~ category_regex }.join("\n")

      # create new snippet
      s = Snippet.new
      s.title = title
      s.body = body
      s.language = "mediawiki"
      s.tag_list = tags.join(" ")
      puts "Saved #{title}" if s.save
    end
    
  end

end
