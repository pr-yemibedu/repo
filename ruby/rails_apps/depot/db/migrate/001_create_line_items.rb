class CreateLineItems < ActiveRecord::Migration
  def self.up
    create_table :line_items do |t|
      # t.column :name, :string
    end
  end

  def self.down
    drop_table :line_items
  end
end
