module MerckDirectory
  # merck production directory server
  SERVER = 'ldap.merck.com'

  # merck production directory server port
  PORT = 389

  # long attributes values to be excluded

  # represents a Merck person within the directory
  class PersonEntry < Hash

  EXCLUDE_ATTRIBUTES = %w( userCertificate entrustRoamingProfile entrustRoamFileEncInfo epchallenge entrustRoamingSLA entrustRoamingPAB objectClass entrustRoamingPRV entrustRoamingEOP mrkPKIq1 mrkPKIq2 )

    def initialize(h = {})
      merge!(h)
    end    

  end

end
