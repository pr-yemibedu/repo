class AddTestData < ActiveRecord::Migration
  def self.up
    User.create( :id => 1, :username => 'pfeilbr', :password => '<password here>')
      
      
    Category.create( :id => 1, :name => 'None' )      
    Category.create( :id => 2, :name => '@Work' )
    Category.create( :id => 3, :name => '@Home' )
    Category.create( :id => 4, :name => '@Computer' )
    
    Priority.create( :id => 1, :name => 'None', :priority => 0 )    
    Priority.create( :id => 2, :name => 'High', :priority => 10 )
    Priority.create( :id => 3, :name => 'Med', :priority => 5 )
    Priority.create( :id => 4, :name => 'Low', :priority => 1 )
    
    Task.create( :user_id => 1, :category_id => 2, :priority_id => 2, :title => 'Clean gutters',
      :notes => 'Get gutter cleaner from Home Depot', :created => DateTime.now, :due => DateTime.now )
      
    Task.create( :user_id => 1, :category_id => 1, :priority_id => 1, :title => 'Submit timesheet',
      :notes => 'Make adjustments for vacation time', :created => DateTime.now, :due => DateTime.now )

    Task.create( :user_id => 1, :category_id => 3, :priority_id => 3, :title => 'Upgrade to Vista',
      :notes => 'Make sure to back everything up before upgrade', :created => DateTime.now, :due => DateTime.now )
  end

  def self.down
    User.delete_all
    Category.delete_all
    Prioroty.delete_all
    Task.delete_all
  end
end
