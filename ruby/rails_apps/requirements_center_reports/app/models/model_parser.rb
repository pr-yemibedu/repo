require 'rubygems'
require 'hpricot'

#
# model.fieldMaps.useCases ( {'NAME_ID': 'Name', 'USE_CASE_LEVEL_ID': 'Use Case Level'} )
# model.fieldMaps.requirements ( {'REQUIREMENT_TYPE_ID': 'Requirement Type'} )
# model.useCases[]
#
#   useCase attributes:
#     name, use case level, description, overview, goal in context, scope,
#     goal, preCondition, postCondition, trigger, threads[], basicFlows[],
#     extFlows[]
#
#   thread attributes: uid, timestamp, author, comments[]
#
#   comment attributes: uid, text, author, timestamp
#
#   basicFlows attributes: uid, steps[]
#
#   extFlows attributes: uid, steps[]
#
#   step attributes: uid, stepOfType, description, threads[], links[], extensions[]
#
#   link attributes: name, link
#
#   extension attributes: uid, flow, goal, preCondition, postCondition
#
# model.requirements[]
#

class ModelParser

  def initialize(xml)
    @doc = Hpricot.XML(xml)
    @model = {}
  end
  
  def parse()
    @model['fieldMaps'] = {}
    @model['fieldMaps']['useCases'] = parse_mappings('PDMUseCaseModel', 'PDMGenericUseCase')
    @model['fieldMaps']['requirements'] = parse_mappings('PDMRequirement')
    @model['useCases'] = parse_use_cases
    @model['requirements'] = parse_requirements
    @model
  end
  
  def parse_mappings(*node_types)
    map = {}
    node_types.each do |node_type|    
      ['systemMeta', 'customMeta'].each do |meta_type|
        (@doc/"#{meta_type} NodeMeta[@nodeType='#{node_type}'] attrMeta").each do |e|
          map[e.attributes['attrField']] = e.attributes['attrName']
        end
      end
    end
    map
  end
  
  def parse_use_cases
    use_cases = []
    (@doc/'useCases').each do |uc_el|
      use_case = get_root_attributes(uc_el)
      use_case.merge!( get_attrs(uc_el) )
      use_case.merge!( parse_goal_and_pre_and_post_conditions(uc_el) )
      use_case.merge!( parse_use_case_relationships(uc_el) )
      use_case['threads'] = parse_threads(uc_el)
      use_case['basicFlows'] = parse_flow(uc_el, 'basicFlow')
      use_case['extFlows'] = parse_flow(uc_el, 'extFlows')
      use_cases << use_case
    end
    use_cases
  end
  
  def parse_goal_and_pre_and_post_conditions(el)
    h = {}
    ['goal', 'preCondition', 'postCondition'].each do |attr|
      e = (el/"proxy #{attr} description").first
      h[attr] = e ? e.attributes['value'] : nil
    end
    h
  end
  
  def parse_use_case_relationships(el)
    h = {}
    ['includes', 'extends'].each do |type|
      h[type] = (el/"graphicsContexts #{type}[@useCase]").collect{ |e| e.attributes['useCase'].gsub('#', '') }
    end
    h
  end
  
  def parse_threads(el)
    threads = []
    (el/'threads').each do |thread_el|
      thread = _attrs(thread_el, 'uid', 'timestamp', 'author')
      thread['name'] = (thread_el/'name').first.attributes['value']
      
      comments = []
      (thread_el/'comments').each do |comment_el|
        comment = _attrs(comment_el, 'uid', 'timestamp', 'author')
        comment['text'] = (comment_el/'text').first.attributes['value']
        comments << comment
      end
      
      thread['comments'] = comments
      
      threads << thread
    end
    threads
  end
  
  def parse_flow(el, flow_type)
    
    flows = (el/flow_type).collect do |flow_el|
      flow = _attrs(flow_el, 'uid')
    
      flow['steps'] = (flow_el/'steps').collect do |step_el|
        step = _attrs(step_el, 'uid', 'stepOfType')
        step['threads'] = parse_threads(step_el)
        step['description'] =(step_el/'description').first.attributes['value']
        
        step['links'] = (step_el/'fileUrls').collect do |link_el|
          link = _attrs(link_el, 'name', 'link')
          link
        end
        
        step['extensions'] = (step_el/'extensions').collect do |extension_el|
          extension = _attrs(extension_el, 'uid', 'flow')
          extension.merge!( parse_goal_and_pre_and_post_conditions(extension_el) )
          extension
        end
      
        step
      end
    
      flow
    end
    flows
  end
  
  def parse_requirements
    (@doc/'requirement requirements').collect do |req_el|
      req = get_root_attributes(req_el)
      req.merge!( get_attrs(req_el) )
      req
    end
  end
  
  private
  
  #
  # Helpers
  #

  def get_attrs(node)
    h = {}
    ['systemAttrSet', 'customAttrSet'].each do |attr_set|
      (node/"#{attr_set} attrs").each do |attr|
        h[attr.attributes['name']] = (attr/'linkableString').first.attributes['value']
      end
    end
    h
  end
  
  def get_root_attributes(el)
    h = _attrs(el, 'uid', 'index', 'prefix', 'incomingTraces', 'outcomingTraces')
    
    # parse traces strings into arrays if they have a value
    ['incomingTraces', 'outcomingTraces'].each do |attr|
      h[attr] = h[attr].split(' ').collect {|e| e.gsub('#', '') } if h[attr]
    end
    h
  end
  
  def _attrs(el, *attributes)
    h = {}
    attributes.each {|a| h[a] = el.attributes[a]}
    h
  end
  
end

debug = false

if debug

require 'open-uri'
require 'hpricot'
require 'json'

#xml = open('/Users/brianpfeil/projects/requirements_center_reports/public/SFA.ucmodel').read
uri = 'http://subversion.merck.com/svn/Requirements%20Elicitation%20Support/blueprint/projects/SFA%20Modeling/main/Master%20Model/SFA.ucmodel'
xml = open(uri, :proxy => nil, :http_basic_authentication => [ 'pfeilbr', 'method33' ]).read
mp = ModelParser.new(xml)
model = mp.parse
puts model['requirements'][0].to_json
#puts model['useCases'].find{ |uc| uc['uid'] == '_tTP8oHCEEd2lNPd5GFImRA' }.to_json

end