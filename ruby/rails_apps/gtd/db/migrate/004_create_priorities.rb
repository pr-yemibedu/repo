class CreatePriorities < ActiveRecord::Migration
  def self.up
    create_table :priorities, :force => true do |t|
      t.column :id, :integer, :null => false, :primary_key => true, :auto_increment => true
      t.column :name, :string
      t.column :priority, :integer
    end
  end

  def self.down
    drop_table :priorities
  end
end
