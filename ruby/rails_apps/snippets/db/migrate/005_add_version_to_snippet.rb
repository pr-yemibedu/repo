class AddVersionToSnippet < ActiveRecord::Migration
  def self.up
    add_column :snippets, :version, :integer
  end

  def self.down
    remove_column :snippets, :version
  end
end
