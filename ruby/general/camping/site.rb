['rubygems', 'camping', 'mongrel', 'mongrel/camping'].each {|f| require f}

Camping.goes :Site

module Site::Models
  class Link < Base; end
end

module Site::Controllers

  class Index < R '/'
    def get
      @links = Link.find :all
      render :index     
    end
  end
  
  class Page < R '/fs/(.*)'
    def get(path)
      # render a partial (layout is not used)
      render :_dir, path
    end  
  end
    
end

module Site::Views
  def layout
    html do
      head { tag! :script, :language=>'javascript', :src=>'prototype.js' }
      title { 'My Site' }
      body { self << yield }
    end
  end
  
  def index
    for link in @links
      a link.name, :href => link.url
    end
    
    #p 'Hi my name is Charles.'
    #p 'Here are some links:'
    #ul do
    #  li { a 'Google', :href => 'http://google.com' }
    #  li { a 'A sample page', :href => '/sample' }
    #end
  end

  def sample
    p 'Sample'
  end
  
  def _dir(path)
    path.gsub!(/\\/, '/')
    paths = Dir[path + "*"]
    
    s = paths.map do |path|
      path.gsub!(/\//, "\\")
      a path, :href=>"file://#{path}"
    end.join('<br>')
    
    s = "no matches" if s == ""
    s
  end
  
#  def method_missing(method_name, *args)
 #   p method_name
 # end
end

def Site.create
   unless Site::Models::Link.table_exists?
     ActiveRecord::Schema.define do
       create_table :site_links, :force => true do |t|
         t.column :id,       :integer, :null => false
         t.column :name,    :string,  :limit => 255
         t.column :url,    :string,  :limit => 255
       end
     end
     Site::Models::Link.reset_column_information

    # create some records
     Site::Models::Link.new { |l|
       l.name = "Google"
       l.url = "http://www.google.com"
       l.save
     }

     y = Site::Models::Link.new
     y.name = "Yahoo"
     y.url = "http://www.yahoo.com"
     y.save     
   end
end

if __FILE__ == $0
  Site::Models::Base.establish_connection :adapter => 'sqlite3', 
    :database => 'Site.db'
  Site::Models::Base.logger = Logger.new('Site.log')
  Site::Models::Base.threaded_connections = false  
  Site.create
  
  #server = Mongrel::Camping.start('0.0.0.0', 5000, '/camping', Site)
  #puts "Access your app at http://localhost:5000/camping"
  #server.acceptor.join
  
  PATH = __FILE__[/(.*)\//, 1]
  config = Mongrel::Configurator.new :host => "0.0.0.0" do
    listener :port => 3002 do
      uri "/", :handler => Mongrel::Camping::CampingHandler.new(Site)
 #     uri "/favicon", :handler => Mongrel::Error404Handler.new("")
      uri "/static", :handler => Mongrel::DirHandler.new("#{PATH}")
      trap("INT") { stop }
      run
    end
  end  
  config.join
end