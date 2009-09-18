class Priority < ActiveRecord::Base
    validates_presence_of :name
    validates_numericality_of :priority, :only_integer => true
    validates_uniqueness_of :priority
    
  protected
    def validate
      errors.add(:priority, "Must be 0 or greater" ) if priority.nil? || priority < 0
    end    
end
