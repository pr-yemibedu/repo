require 'find'

class FileSearch
  def self.search(search_directory = '.', pattern = /.*/, &block)
    Find.find(search_directory) do |path|
      block.call(path) if path =~ pattern
    end
   end
end

#FileSearch.search("c:/temp", /(.*)(\.xml$)/) do |path|
#  puts path
#end
