class Task < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  belongs_to :priority
  
  validates_presence_of :title
end
