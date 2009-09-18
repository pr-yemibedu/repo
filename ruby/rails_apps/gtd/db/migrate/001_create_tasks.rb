class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks, :force => true do |t|
      t.column :id, :integer, :null => false, :primary_key => true, :auto_increment => true
      t.column :user_id, :integer, :null => false
      t.column :category_id, :integer, :null => false
      t.column :priority_id, :integer, :null => false      
      t.column :title, :string
      t.column :notes, :text
      t.column :due, :date      
      t.column :created, :timestamp
      t.column :updated, :timestamp, :default => DateTime.now      
      t.column :completed, :timestamp      
    end
  end

  def self.down
    drop_table :tasks
  end
end
