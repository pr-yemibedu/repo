class RemoveHtmlFormattedFromSnippet < ActiveRecord::Migration
  def self.up
    remove_column :snippets, :html_formatted
  end

  def self.down
    add_column :snippets, :html_formatted, :text
  end
end
