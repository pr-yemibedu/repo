class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users, :force => true do |t|
      t.column :id, :integer, :null => false, :primary_key => true, :auto_increment => true
      t.column :username, :string
      t.column :password, :string
    end
  end

  def self.down
    drop_table :users
  end
end
