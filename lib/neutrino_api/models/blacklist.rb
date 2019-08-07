# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # Blacklist Model.
  class Blacklist < BaseModel
    # true if listed, false if not
    # @return [Boolean]
    attr_accessor :is_listed

    # the domain/hostname of the DNSBL
    # @return [String]
    attr_accessor :list_host

    # the list rating [1-3] with 1 being the best rating and 3 the lowest rating
    # @return [Integer]
    attr_accessor :list_rating

    # the name of the DNSBL
    # @return [String]
    attr_accessor :list_name

    # the TXT record returned for this listing (if listed)
    # @return [String]
    attr_accessor :txt_record

    # the specific return code for this listing (if listed)
    # @return [String]
    attr_accessor :return_code

    # the DNSBL server response time in milliseconds
    # @return [Integer]
    attr_accessor :response_time

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['is_listed'] = 'isListed'
      @_hash['list_host'] = 'listHost'
      @_hash['list_rating'] = 'listRating'
      @_hash['list_name'] = 'listName'
      @_hash['txt_record'] = 'txtRecord'
      @_hash['return_code'] = 'returnCode'
      @_hash['response_time'] = 'responseTime'
      @_hash
    end

    def initialize(is_listed = nil,
                   list_host = nil,
                   list_rating = nil,
                   list_name = nil,
                   txt_record = nil,
                   return_code = nil,
                   response_time = nil)
      @is_listed = is_listed
      @list_host = list_host
      @list_rating = list_rating
      @list_name = list_name
      @txt_record = txt_record
      @return_code = return_code
      @response_time = response_time
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      is_listed = hash['isListed']
      list_host = hash['listHost']
      list_rating = hash['listRating']
      list_name = hash['listName']
      txt_record = hash['txtRecord']
      return_code = hash['returnCode']
      response_time = hash['responseTime']

      # Create object from extracted values.
      Blacklist.new(is_listed,
                    list_host,
                    list_rating,
                    list_name,
                    txt_record,
                    return_code,
                    response_time)
    end
  end
end
