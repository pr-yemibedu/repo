class CustomerController < ApplicationController
  
  def index
    @customers = Customer.find :all, :conditions=>[ "last_nm like ?", "%smith%"]
  end
  
end
