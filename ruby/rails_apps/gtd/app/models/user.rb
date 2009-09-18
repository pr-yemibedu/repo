class User < ActiveRecord::Base
    validates_presence_of :username, :password
    
    def self.authenticate(name, password)
      user = self.find_by_username('pfeilbr')
      user
    end
end
