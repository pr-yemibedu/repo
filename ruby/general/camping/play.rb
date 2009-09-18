['rubygems', 'camping', 'mongrel', 'mongrel/camping', 'camping/session'].each {|f| require f}

module Play; include Camping::Session end

Camping.goes :Play

module Play::Models
end

module PlaySession

  def service(*a)
    @my_state = self.class.to_s
    super(*a)
  end
  
end

module Play; include PlaySession end

module Play::Controllers

  class Index < R '/'
    def get
      render :index, "#{@my_state} - #{self.class.to_s}"
    end
  end
  
  class Login < R '/login'
    def get
      render :login
    end
  end
  
end

module Play::Views
  def layout
    html do
      head { tag! :script, :language=>'javascript', :src=>'prototype.js' }
      title { 'My Site' }
      body { self << yield }
    end
  end
  
  def index(s = '')
    p {a 'login', :href=>R(Login)}
    p { s }
  end
  
  def login
    form :id => "login", :action=>R(Login), :method=>"post" do
      p do
        p do
          text "user: "
          input :type=>'text', :name=>'user', :id=>'user'
        end
        p do
          text "password: "
          input :type=>'password', :name=>'password', :id=>'password'
        end
        input :type=>'submit', :value=>'login'
      end
    end
  end
end

def Play.Create
  Camping::Models::Session.create_schema
end

if __FILE__ == $0
   Play::Models::Base.establish_connection :adapter => 'sqlite3', :database => 'play.db'
   Play::Models::Base.logger = Logger.new('play.log')
   Play.create
   puts Play.run
end 