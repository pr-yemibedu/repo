class Person < ActiveRecord::Base
  acts_as_versioned
  
  DISPLAY_FIELDS = %w( mrkdisplayname2 title managercn )
  
  def self.total_people
    Person.find(:all).size
  end
  
  # do this dynamically
  def self.employees
    
  end
  
  def self.non_employees
    
  end
  
end

class PersonAttributes
  
  ATTRIBUTES_MAP = [
    {:title => 'Director', :alias => 'director', :grade => 3},
    {:title => 'Manager', :alias => 'manager', :grade => 4},
    {:title => 'Proj Lead', :alias => 'pm', :grade => 5},
    {:title => 'Application Svcs Sr Analyst', :alias => 'sranalyst', :grade => 6},
    {:title => 'Application Services Analyst', :alias => 'analyst', :grade => 7},
    {:title => 'Application Svcs Specialist', :alias => 'specialist', :grade => 8},    
    {:title => 'Non-Employee', :alias => 'nonemployee', :grade => nil},
    {:title => 'Administrative Assistant', :alias => 'admin', :grade => nil}
  ]
  
  # example usage: get(:title, :alias => 'director')
  def self.get(key, h)
    ATTRIBUTES_MAP.each do |e|
      return e[key] if e[h.keys.first] == h.values.first
    end
  end
  
  def self.get_title_by_alias(a)
    POSITION_TO_TITLE_MAP.each do |e|
      return e[:title] if e[:alias] == a
    end
  end

  def self.get_title_by_grade(g)
    POSITION_TO_TITLE_MAP.each do |e|
      return e[:title] if e[:grade] == g
    end
  end    

  def self.[](key)
    get_title_by_alias(key) if key.is_a?(String)
    get_title_by_grade(key) if key.is_a?(Fixnum)
  end
end
