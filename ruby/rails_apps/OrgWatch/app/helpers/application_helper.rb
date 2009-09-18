# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def javascript_include_ext_lib
    s = ""
    ['ext/adapter/ext/ext-base',
      'ext/ext-all'
    ].each do |path|
      s += javascript_include_tag path
    end
    s
  end
  
  def google_chart(options = {})
    options[:data] = { 'Employees' => 10.0, 'Non-Employees' => 23.0 }
    options[:title] = "Employees vs. Non-Employees"
    values = options[:data].keys.sort.collect{ |k| options[:data][k] }.join(',')
    labels = options[:data].keys.sort.collect{ |k| "#{k}(#{options[:data][k].to_i})" }.join('|')
    %{<img src="http://chart.apis.google.com/chart?cht=p3&chd=t:#{values}&chs=300x100&chl=#{labels}&chtt=Employees%20vs%20NonEmployees"></img>}
  end

end
