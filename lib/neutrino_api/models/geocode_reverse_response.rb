# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # GeocodeReverseResponse Model.
  class GeocodeReverseResponse < BaseModel
    # The country of the location
    # @return [String]
    attr_accessor :country

    # True if these coordinates map to a real location
    # @return [Boolean]
    attr_accessor :found

    # The fully formatted address
    # @return [String]
    attr_accessor :address

    # The city of the location
    # @return [String]
    attr_accessor :city

    # The ISO 2-letter country code of the location
    # @return [String]
    attr_accessor :country_code

    # The postal code for the location
    # @return [String]
    attr_accessor :postal_code

    # The state of the location
    # @return [String]
    attr_accessor :state

    # The components which make up the address such as road, city, state, etc
    # @return [Array<String, String>]
    attr_accessor :address_components

    # The ISO 3-letter country code of the location
    # @return [String]
    attr_accessor :country_code3

    # ISO 4217 currency code associated with the country
    # @return [String]
    attr_accessor :currency_code

    # The detected location type ordered roughly from most to least precise,
    # possible values are: <ul> <li>address - indicates a precise street
    # address</li> <li>street - accurate to the street level but may not point
    # to the exact location of the house/building number</li> <li>city -
    # accurate to the city level, this includes villages, towns, suburbs,
    # etc</li> <li>postal-code - indicates a postal code area (no house or
    # street information present)</li> <li>railway - location is part of a rail
    # network such as a station or railway track</li> <li>natural - indicates a
    # natural feature, for example a mountain peak or a waterway</li> <li>island
    # - location is an island or archipelago</li> <li>administrative - indicates
    # an administrative boundary such as a country, state or province</li> </ul>
    # @return [String]
    attr_accessor :location_type

    # Array of strings containing any location tags associated with the address.
    # Tags are additional pieces of metadata about a specific location, there
    # are thousands of different tags. Some examples of tags: shop, office,
    # cafe, bank, pub
    # @return [List of String]
    attr_accessor :location_tags

    # The location latitude
    # @return [Integer]
    attr_accessor :latitude

    # The location longitude
    # @return [Integer]
    attr_accessor :longitude

    # Map containing timezone details for the location: <ul> <li>id - the time
    # zone ID as per the IANA time zone database (tzdata)</li> <li>name - the
    # time zone name</li> <li>abbr - the time zone abbreviation</li> <li>date -
    # the current date within the time zone (ISO format)</li> <li>time - the
    # current time within the time zone (ISO format)</li> </ul>
    # @return [Array<String, String>]
    attr_accessor :timezone

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['country'] = 'country'
      @_hash['found'] = 'found'
      @_hash['address'] = 'address'
      @_hash['city'] = 'city'
      @_hash['country_code'] = 'countryCode'
      @_hash['postal_code'] = 'postalCode'
      @_hash['state'] = 'state'
      @_hash['address_components'] = 'addressComponents'
      @_hash['country_code3'] = 'countryCode3'
      @_hash['currency_code'] = 'currencyCode'
      @_hash['location_type'] = 'locationType'
      @_hash['location_tags'] = 'locationTags'
      @_hash['latitude'] = 'latitude'
      @_hash['longitude'] = 'longitude'
      @_hash['timezone'] = 'timezone'
      @_hash
    end

    def initialize(country = nil,
                   found = nil,
                   address = nil,
                   city = nil,
                   country_code = nil,
                   postal_code = nil,
                   state = nil,
                   address_components = nil,
                   country_code3 = nil,
                   currency_code = nil,
                   location_type = nil,
                   location_tags = nil,
                   latitude = nil,
                   longitude = nil,
                   timezone = nil)
      @country = country
      @found = found
      @address = address
      @city = city
      @country_code = country_code
      @postal_code = postal_code
      @state = state
      @address_components = address_components
      @country_code3 = country_code3
      @currency_code = currency_code
      @location_type = location_type
      @location_tags = location_tags
      @latitude = latitude
      @longitude = longitude
      @timezone = timezone
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      country = hash['country']
      found = hash['found']
      address = hash['address']
      city = hash['city']
      country_code = hash['countryCode']
      postal_code = hash['postalCode']
      state = hash['state']
      address_components = hash['addressComponents']
      country_code3 = hash['countryCode3']
      currency_code = hash['currencyCode']
      location_type = hash['locationType']
      location_tags = hash['locationTags']
      latitude = hash['latitude']
      longitude = hash['longitude']
      timezone = hash['timezone']

      # Create object from extracted values.
      GeocodeReverseResponse.new(country,
                                 found,
                                 address,
                                 city,
                                 country_code,
                                 postal_code,
                                 state,
                                 address_components,
                                 country_code3,
                                 currency_code,
                                 location_type,
                                 location_tags,
                                 latitude,
                                 longitude,
                                 timezone)
    end
  end
end
