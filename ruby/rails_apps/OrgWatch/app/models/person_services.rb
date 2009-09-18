require 'ldap'

class LDAPPersonEntry < Hash
  
  # LDAP fields that we care about for each person
  FIELDS = %w( cn employeeNumber description mrkBusinessUnitName physicalDeliveryOfficeName title manager departmentname mrkmsxmail mrkSuperDivisionName givenName mrkSubDivisionName ntUserDomainId telephoneNumber businessdivision mrkdisplayname1 mrkdisplayname2 preferredlastname preferredfirstname mail )
  EXCLUDE_ATTRIBUTES = %w( x121Address teletexTerminalIdentifier userCertificate entrustRoamingProfile entrustRoamFileEncInfo epchallenge entrustRoamingSLA entrustRoamingPAB objectClass entrustRoamingPRV entrustRoamingEOP mrkPKIq1 mrkPKIq2 )

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

class LDAPPeopleRunner
  
  def self.get_all
    conn = LDAP::Conn.new(host='ldap.merck.com', port = 389)
    base = 'ou=Merck,ou=People,dc=iM-2,dc=com'
    filter = 'mrkBusinessUnitName=Solutions Delivery'
    people = []
    conn.search(base, LDAP::LDAP_SCOPE_SUBTREE, filter) do |entry|
      people << LDAPPersonEntry.new(entry.to_hash)
    end
    people
  end
  
end


class PersonServices

    def self.reload_people
      # delete all people
      affected = Person.delete_all 
      puts "Deleted #{affected} people from database"
      
      LDAPPeopleRunner.get_all.each do |person|
        h = person.clone
        h.delete('objectClass')
        p = {}
        h.each_pair do |key,value|
          p[key] = value
        end
        Person.new(p).save!
      end
      puts "#{Person.find(:all).size} people loaded"
      {:deleted_count=> affected, :loaded_count => Person.find(:all).size}
    end
    
end
