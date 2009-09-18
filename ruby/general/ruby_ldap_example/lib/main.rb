require 'ldap'
require 'pp'
require 'yaml'
require 'set'

module Helpers
  def save_to_file(s, path)
    File.open(path, "w") { |f| f.puts(s) }
  end
  
  def save_to_file_as_yaml(o, path)
    save_to_file(o.to_yaml, path)
  end
  
end

class Hash
  
  def max_numeric_pair
    max_pair = {0=>0}
    each_pair { |key, value| max_pair = {key => value} if value > max_pair.values.first  }
    max_pair
  end
  
end

include Helpers

class People < Array
  
  def uniq_attributes
    attributes = Set.new
    each do |p|
      attributes.merge(p.keys)
    end
    attributes.to_a
  end
  
  def longest_attributes
    attr_value_sizes = {}
    each do |p|
      p.each_pair do |key, value|
        if attr_value_sizes[key]
          attr_value_sizes[key] = value.size if attr_value_sizes[key] > value.size
        else
          attr_value_sizes[key] = value.size
        end
      end
    end
    attr_value_sizes
  end
  
  def find_first_attribute(attribute)
    each do |p|
      return {attribute => p[attribute]} if p.has_key?(attribute)
    end
  end
  
  def to_s
    s = ""
    each do |p|
      s += p.to_yaml + "\n\n"
    end
  end
  
end

class Person < Hash
  
  # LDAP fields that we care about for each person
  FIELDS = %w( cn employeeNumber description mrkBusinessUnitName physicalDeliveryOfficeName title manager departmentname mrkmsxmail mrkSuperDivisionName givenName mrkSubDivisionName ntUserDomainId telephoneNumber businessdivision mrkdisplayname1 mrkdisplayname2 preferredlastname preferredfirstname mail )
  EXCLUDE_ATTRIBUTES = %w( userCertificate entrustRoamingProfile entrustRoamFileEncInfo epchallenge entrustRoamingSLA entrustRoamingPAB objectClass entrustRoamingPRV entrustRoamingEOP mrkPKIq1 mrkPKIq2 )

  def initialize(h={})
    merge!(h)
    clean_fields
  end
  
  private
  
  def clean_fields
    # each key has a value that's an array containing 1 value.
    # this makes it so each key's value is a single value (string or number)
    self.clone.each_pair { |key, value| self[key] = value[0] }
    
    # remove fields we don't want
    self.delete_if { |key, value| EXCLUDE_ATTRIBUTES.include?(key) }
  end
  
end

conn = LDAP::Conn.new(host='ldap.merck.com', port = 389)


base = 'ou=Merck,ou=People,dc=iM-2,dc=com'
#filter = 'uid=pfeilbr'
#filter = 'employeeNumber=99918903'
filter = 'mrkBusinessUnitName=Solutions Delivery'
people = []
conn.search(base, LDAP::LDAP_SCOPE_SUBTREE, filter) do |entry|
  people << Person.new(entry.to_hash)
end

people.each { |p| save_to_file_as_yaml({}.merge(p), "c:\\temp\\" + p['employeeNumber'].to_s + ".yml") }
puts 'done'

#people = People.new
#
#Dir["c:/temp/*.yml"].each do |path|
#  people << Person.new(YAML::load_file(path))
#end

#puts people
#puts people.uniq_attributes.collect{ |a| "#{a}:string" }.sort.join(' ')
#puts people.longest_attributes.max_numeric_pair.to_yaml
#puts people.find_first_attribute('mrkPKIq1').to_yaml
#puts people.longest_attributes.to_yaml