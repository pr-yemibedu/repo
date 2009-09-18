require 'active_record'
require 'pp'

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3', 
  :database => 'simple.db'
)

class Person < ActiveRecord::Base; end

unless Person.table_exists?
  ActiveRecord::Schema.define do
    create_table :people, :force => true do |t|
      t.column :id,       :integer, :null => false
      t.column :name,    :string,  :limit => 255
    end
  end
  
  p = Person.new
  p.name = 'Brian Pfeil'
  p.save
end

ActiveRecord::Base.logger = Logger.new(STDOUT)

Person.find(:all).each do |p|
  pp p
end
