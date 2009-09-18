class PeopleController < ApplicationController
  
  def commented_out
    active_scaffold :person do |config|
    
      # Columns to display at the global level
      #config.columns = [:mrkdisplayname2, :title, :managercn]
    
      # Columns displayed in the list view
      config.list.columns = [:mrkdisplayname2, :title, :managercn]
    
      # set the title of the page
      config.list.label = "Merck People"
    
      # Columns displayed in the show view
      #config.show.columns = [:mrkdisplayname2]
    
      # Database column names to user-friendly names
      config.columns[:mrkdisplayname2].label = "Name"
      config.columns[:title].label = "Title"
      config.columns[:managercn].label = "Manager"
    
      # actions to make available
      config.actions = config.actions = [:list, :show, :search, :nested]
    
      # enable live search
      config.actions.swap :search, :live_search
    
      # number of rows to be displayed on each page
      config.list.per_page = 10
    
      # columns to sort by and direction (:asc or :desc)
      config.list.sorting = [:mrkdisplayname2 => :asc]
    
      # columns to search for live search
      config.live_search.columns = [:mrkdisplayname2]
    
      # Set the title of the Show page
      #config.show.label = "LDAP Details"
    
      # Change the link text of the "Show" link to "Details"
      #config.show.link.label = "Details"
    
      # adds a link to the top nav bar
      config.action_links.add 'hierarchy', :label => 'Show Organization Hierarchy'
    
      config.action_links.add 'View in Merck Directory', :action => 'merck_directory', :popup => true, :type => :record, :method => :post
    
      config.action_links.add 'http://www.google.com', :label => 'Google', :action => 'redirect_to_url', :parameters => {:url => 'http://www.google.com'}, :popup => true
    end
  end
  
  def index
    Rails.cache.read('test')
  end
  
  def cache_test
    people = Rails.cache.read('people')
    msg = 'read from cache'
    if !people
      people = 'brian, tricia, wyatt'
      Rails.cache.write('people', people)
      msg = 'not read from cache'
    end
      
    render :text => people[100..1000].to_json
    
  end
  
  def redirect_to_url
    redirect_to params[:url]
  end
   
  def reload
    result = PersonServices.reload_people
    render :text => result.to_yaml
  end
  
  def filter(find_options)
    @people = Person.find(:all, find_options)
    @render_options = find_options.merge(:active_scaffold => 'people', :label => PersonAttributes[params[:position]], :order => 'mrkdisplayname2')

    respond_to do |format|
      format.html { render :action => 'filter' }
      format.xml  { render :xml => @people }
      format.json  { render :json => @people[0..9].to_json }
    end    
  end
  
  def isid
    @person = Person.find_by_uid(params[:id])

    respond_to do |format|
      format.html { render :action => 'filter' }
      format.xml  { render :xml => @person }
      format.json  { render :json => @person.to_json }
    end    

  end
  
  def by_id
    @person = Person.find(params[:id])

    respond_to do |format|
      format.html { render :action => 'filter' }
      format.xml  { render :xml => @person }
      format.json  { render :json => @person.to_json }
    end    
    
  end
  
  private :filter
  
  def position
    filter( {:conditions => "title like '%#{PersonAttributes[params[:position]]}%'"} )
  end
  
  def grade
    filter( {:conditions => "title like '%#{PersonAttributes[params[:grade]]}%'"} )
  end  
  
  def search
    q = params[:query].downcase
    people = Rails.cache.read('people')
    matched_people = people.find_all{ |p| p['mrkdisplayname2'].downcase.index(q) == 0 }

    respond_to do |format|
      format.html { render :action => 'filter' }
      format.xml  { render :xml => matched_people }
      format.json  { render :json => matched_people[0..9].to_json }
    end
        
    #filter( {:conditions => "mrkdisplayname2 like '#{params[:query]}%'", :order => 'mrkdisplayname2'} )
  end
  
  def statistics
  
  end
  
  def org_hierarchy
    @people = Person.find(:all)
    temp_hierarchy = {}
    @people.each do |person|
      temp_hierarchy[person.dn] = { :id => person.dn, :manager_id => person.manager, :reports => {} }
    end  
    
    hierarchy = temp_hierarchy.clone
    temp_hierarchy.each_pair do |key, value|
      if value[:reports].empty?
        
      end
     
    end
    
    render :text => "<pre>#{temp_hierarchy.to_yaml}</pre>"
  end
  
#  # GET /people
#  # GET /people.xml
#  def index
#    @people = Person.find(:all, :order => 'mrkdisplayname2')
#
#    respond_to do |format|
#      format.html # index.html.erb
#      format.xml  { render :xml => @people }
#      format.json  { render :json => @people }
#    end
#  end  

#  # GET /people/1
#  # GET /people/1.xml
#  def show
#    @person = Person.find(params[:id])
#
#    respond_to do |format|
#      format.html # show.html.erb
#      format.xml  { render :xml => @person }
#    end
#  end
#
#  # GET /people/new
#  # GET /people/new.xml
#  def new
#    @person = Person.new
#
#    respond_to do |format|
#      format.html # new.html.erb
#      format.xml  { render :xml => @person }
#    end
#  end
#
#  # GET /people/1/edit
#  def edit
#    @person = Person.find(params[:id])
#  end
#
#  # POST /people
#  # POST /people.xml
#  def create
#    @person = Person.new(params[:person])
#
#    respond_to do |format|
#      if @person.save
#        flash[:notice] = 'Person was successfully created.'
#        format.html { redirect_to(@person) }
#        format.xml  { render :xml => @person, :status => :created, :location => @person }
#      else
#        format.html { render :action => "new" }
#        format.xml  { render :xml => @person.errors, :status => :unprocessable_entity }
#      end
#    end
#  end
#
#  # PUT /people/1
#  # PUT /people/1.xml
#  def update
#    @person = Person.find(params[:id])
#
#    respond_to do |format|
#      if @person.update_attributes(params[:person])
#        flash[:notice] = 'Person was successfully updated.'
#        format.html { redirect_to(@person) }
#        format.xml  { head :ok }
#      else
#        format.html { render :action => "edit" }
#        format.xml  { render :xml => @person.errors, :status => :unprocessable_entity }
#      end
#    end
#  end
#
#  # DELETE /people/1
#  # DELETE /people/1.xml
#  def destroy
#    @person = Person.find(params[:id])
#    @person.destroy
#
#    respond_to do |format|
#      format.html { redirect_to(people_url) }
#      format.xml  { head :ok }
#    end
#  end
end
