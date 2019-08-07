# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # HostReputationResponse Model.
  class HostReputationResponse < BaseModel
    # Is this host blacklisted
    # @return [Boolean]
    attr_accessor :is_listed

    # An array of objects for each DNSBL checked, with the following keys: <ul>
    # <li>is-listed - true if listed, false if not</li> <li>list-name - the name
    # of the DNSBL</li> <li>list-host - the domain/hostname of the DNSBL</li>
    # <li>list-rating - the list rating [1-3] with 1 being the best rating and 3
    # the lowest rating</li> <li>txt-record - the TXT record returned for this
    # listing (if listed)</li> <li>return-code - the specific return code for
    # this listing (if listed)</li> <li>response-time - the DNSBL server
    # response time in milliseconds</li> </ul>
    # @return [List of Blacklist]
    attr_accessor :lists

    # The number of DNSBLs the host is listed on
    # @return [Integer]
    attr_accessor :list_count

    # The IP address or host name
    # @return [String]
    attr_accessor :host

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['is_listed'] = 'isListed'
      @_hash['lists'] = 'lists'
      @_hash['list_count'] = 'listCount'
      @_hash['host'] = 'host'
      @_hash
    end

    def initialize(is_listed = nil,
                   lists = nil,
                   list_count = nil,
                   host = nil)
      @is_listed = is_listed
      @lists = lists
      @list_count = list_count
      @host = host
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      is_listed = hash['isListed']
      # Parameter is an array, so we need to iterate through it
      lists = nil
      unless hash['lists'].nil?
        lists = []
        hash['lists'].each do |structure|
          lists << (Blacklist.from_hash(structure) if structure)
        end
      end
      list_count = hash['listCount']
      host = hash['host']

      # Create object from extracted values.
      HostReputationResponse.new(is_listed,
                                 lists,
                                 list_count,
                                 host)
    end
  end
end
