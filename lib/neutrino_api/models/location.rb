# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # Location Model.
  class Location < BaseModel
    # The country of the location
    # @return [String]
    attr_accessor :country

    # The fully formatted address
    # @return [String]
    attr_accessor :address

    # The city of the location
    # @return [String]
    attr_accessor :city

    # The ISO 2-letter country code of the location
    # @return [String]
    attr_accessor :country_code

    # The ISO 3-letter country code of the location
    # @return [String]
    attr_accessor :country_code3

    # The location latitude
    # @return [Float]
    attr_accessor :latitude

    # The postal code for the location
    # @return [String]
    attr_accessor :postal_code

    # The location longitude
    # @return [Float]
    attr_accessor :longitude

    # The state of the location (if applicable)
    # @return [String]
    attr_accessor :state

    # The components which make up the address such as road, city, state etc.
    # May also include additional metadata about the address
    # @return [Array<String, String>]
    attr_accessor :address_components

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['country'] = 'country'
      @_hash['address'] = 'address'
      @_hash['city'] = 'city'
      @_hash['country_code'] = 'countryCode'
      @_hash['country_code3'] = 'countryCode3'
      @_hash['latitude'] = 'latitude'
      @_hash['postal_code'] = 'postalCode'
      @_hash['longitude'] = 'longitude'
      @_hash['state'] = 'state'
      @_hash['address_components'] = 'addressComponents'
      @_hash
    end

    def initialize(country = nil,
                   address = nil,
                   city = nil,
                   country_code = nil,
                   country_code3 = nil,
                   latitude = nil,
                   postal_code = nil,
                   longitude = nil,
                   state = nil,
                   address_components = nil)
      @country = country
      @address = address
      @city = city
      @country_code = country_code
      @country_code3 = country_code3
      @latitude = latitude
      @postal_code = postal_code
      @longitude = longitude
      @state = state
      @address_components = address_components
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      country = hash['country']
      address = hash['address']
      city = hash['city']
      country_code = hash['countryCode']
      country_code3 = hash['countryCode3']
      latitude = hash['latitude']
      postal_code = hash['postalCode']
      longitude = hash['longitude']
      state = hash['state']
      address_components = hash['addressComponents']

      # Create object from extracted values.
      Location.new(country,
                   address,
                   city,
                   country_code,
                   country_code3,
                   latitude,
                   postal_code,
                   longitude,
                   state,
                   address_components)
    end
  end
end
