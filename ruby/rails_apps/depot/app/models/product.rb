class Product < ActiveRecord::Base
	# user must fill in the following form fields
	validates_presence_of :title, :description, :image_url
	
	# ensure the user enters a number
	validates_numericality_of :price
	
	# gaurantee unique titles
	validates_uniqueness_of :title
	
	# validates URL format with the specified regex
	validates_format_of :image_url, :with => %r{^http:.+\.(gif|jpg|png)$}i, :message => "must be a URL for a GIF, JPG, or PNG image"

	# Return a list of products we can sell (which means they have to be
	# available). Show the most recently available first.
	def self.salable_items
		find(:all, :conditions => "date_available <= now()", :order => "date_available desc")
	end
	
	protected
	# custom validation - shouldn't be public because it's used internally by rails
	def validate
		errors.add(:price, "should be positive") unless price.nil? || price > 0.0
	end
end
