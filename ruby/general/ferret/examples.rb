require 'rubygems'
require 'ferret'
require 'find'
require 'pathname'
include Ferret

def p(index, id, score)
  puts "id=#{id}, score=#{score}, title=#{index[id][:title]}, content=#{index[id][:content]}"
end

index = Index::Index.new()
index << {:title => 'Ruby Cookbook', :content => 'A a touch of Ruby and go to town'}
index << {:title => 'Java Cookbook', :content => 'A a touch of Java and go to town'}
index.search_each('title:*') { |id, score| p(index, id, score) }

Find.find("c:/ruby/bin") do |path|
  is_dir = File.directory?(path)
  ext = File.extname(path).downcase
  ext = ext[1..-1] unless ext.empty?
  basename = is_dir ? "" : File.basename(path)
  dirname = File.dirname(path)
  puts <<-EOF
    basename = #{basename}, dirname=#{dirname}, ext=#{ext}
  EOF
end
