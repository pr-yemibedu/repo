require 'open-uri'
require 'fastercsv'

class AppController < ApplicationController
  
  #@@uri = 'http://localhost/secure/SFA.ucmodel'
  @@uri = 'http://subversion.merck.com/svn/Requirements%20Elicitation%20Support/blueprint/projects/SFA%20Modeling/main/Master%20Model/SFA.ucmodel'
  before_filter :authenticate
  
  def index
  end

  def login
    session['username'] = params['username']
    session['password'] = params['password']
    render :text => 'ok'
  end
  
  def proxy
    xml = get_model_from_subversion
    render :xml => xml
  end
  
  def show_session
    render :text => 'username: ' + session['username'] + ', password: ' + session['password']
  end
  
  def model_viewer
    render
  end
  
  def modeldata
      xml = get_model_from_subversion
      model = ModelParser.new(xml).parse
      render :json => model.to_json
  end
  
  # This action handles 2 different kinds of requests.  The 1st is a POST
  # which contains the data for the csv to be generated in json format. The
  # json data is read in and stored in a global cache identified by a unique
  # report id.  This report id is returned to the client.  The client then
  # makes another request to this action passing the report id as a parameter.
  # The report data is pulled from the global cache by report id and the report
  # is generated and send back to the client
  def export_to_excel
    
    if !params['report_id'] # request to store report
      report_id = rand(10000).to_s
      Rails.cache.write(report_id, params['_json'])
      render :text => report_id      
    else # request to generate report
      report_id = params['report_id']
      data = Rails.cache.read(report_id)
      keys = data[0].keys
      csv_string = FasterCSV.generate do |csv| 
        csv << keys
        data.each do |e|
          row = []
          keys.each {|k| row << e[k]}
          csv << row
        end
      end
      
      Rails.cache.delete(report_id)

      send_data csv_string, :type => "text/plain", 
       :filename=>"export.csv", 
       :disposition => 'attachment'    
    end

  end
  
  protected

  def get_model_from_subversion
    xml = open(@@uri, :proxy => nil, :http_basic_authentication => [ session['username'], session['password'] ]).read
    xml
  end

  def authenticate
    authenticate_or_request_with_http_basic('Please supply Merck Login Credentials for Subversion Access') do |username, password|
      authenticated = false
      if http_get_with_basic_auth(@@uri, username, password)
        session['username'] = username
        session['password'] = password
        authenticated = true
      end
      authenticated
    end
  end
  
  def http_get_with_basic_auth(url, username, password)
    contents = nil
    begin
      io = open(url, :http_basic_authentication => [username, password])
      status = io.status[0]
      contents = io.read
    rescue OpenURI::HTTPError => err
    end
    contents
  end
  
end
