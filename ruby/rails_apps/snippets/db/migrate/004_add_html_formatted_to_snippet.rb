class AddHtmlFormattedToSnippet < ActiveRecord::Migration
  def self.up
    add_column :snippets, :html_formatted, :text
  end

  def self.down
    remove_column :snippets, :html_formatted
  end
end
