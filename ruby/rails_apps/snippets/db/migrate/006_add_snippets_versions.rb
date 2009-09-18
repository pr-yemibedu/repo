class AddSnippetsVersions < ActiveRecord::Migration
  def self.up
    Snippet.create_versioned_table
  end

  def self.down
    Snippet.drop_versioned_table
  end
end
