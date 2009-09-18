class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :first
      t.string :last
      t.integer :age
      t.date :birthday
      t.text :notes
      t.boolean :married
      t.integer :version

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
