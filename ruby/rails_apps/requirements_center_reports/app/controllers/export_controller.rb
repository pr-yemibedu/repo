require 'fastercsv'

class ExportController < ApplicationController
  
  # This action handles 2 different kinds of requests.  The 1st is a POST
  # which contains the data for the csv to be generated in json format. The
  # json data is read in and stored in a global cache identified by a unique
  # report id.  This report id is returned to the client.  The client then
  # makes another request to this action passing the report id as a parameter.
  # The report data is pulled from the global cache by report id and the report
  # is generated and send back to the client
  def excel
    
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

  def text
  end

end
