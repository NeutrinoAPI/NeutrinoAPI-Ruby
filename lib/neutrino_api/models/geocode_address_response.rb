# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # GeocodeAddressResponse Model.
  class GeocodeAddressResponse < BaseModel
    # The number of possible matching locations found
    # @return [Integer]
    attr_accessor :found

    # Array of matching location objects: <table> <tbody> <tr> <th>Key</th>
    # <th>Type</th> <th>Description</th> </tr> <tr> <td>latitude</td>
    # <td>float</td> <td>The location latitude</td> </tr> <tr>
    # <td>longitude</td> <td>float</td> <td>The location longitude</td> </tr>
    # <tr> <td>address</td> <td>string</td> <td>The fully formatted address</td>
    # </tr> <tr> <td>address-components</td> <td>map</td> <td>The components
    # which make up the address such as road, city, state, etc</td> </tr> <tr>
    # <td>city</td> <td>string</td> <td>The city of the location</td> </tr> <tr>
    # <td>state</td> <td>string</td> <td>The state of the location</td> </tr>
    # <tr> <td>country</td> <td>string</td> <td>The country of the location</td>
    # </tr> <tr> <td>country-code</td> <td>string</td> <td>The ISO 2-letter
    # country code of the location</td> </tr> <tr> <td>country-code3</td>
    # <td>string</td> <td>The ISO 3-letter country code of the location</td>
    # </tr> <tr> <td>currency-code</td> <td>string</td> <td>ISO 4217 currency
    # code associated with the country</td> </tr> <tr> <td>postal-code</td>
    # <td>string</td> <td>The postal code for the location</td> </tr> <tr>
    # <td>location-type</td> <td>string</td> <td>The detected location type
    # ordered roughly from most to least precise, possible values are: <ul>
    # <li>address - indicates a precise street address</li> <li>street -
    # accurate to the street level but may not point to the exact location of
    # the house/building number</li> <li>city - accurate to the city level, this
    # includes villages, towns, suburbs, etc</li> <li>postal-code - indicates a
    # postal code area (no house or street information present)</li> <li>railway
    # - location is part of a rail network such as a station or railway
    # track</li> <li>natural - indicates a natural feature, for example a
    # mountain peak or a waterway</li> <li>island - location is an island or
    # archipelago</li> <li>administrative - indicates an administrative boundary
    # such as a country, state or province</li> </ul></td> </tr> <tr>
    # <td>location-tags</td> <td>array</td> <td>Array of strings containing any
    # location tags associated with the address. Tags are additional pieces of
    # metadata about a specific location, there are thousands of different tags.
    # Some examples of tags: shop, office, cafe, bank, pub</td> </tr> <tr>
    # <td>timezone</td> <td>map</td> <td>Map containing timezone details for the
    # location: <ul> <li>id - the time zone ID as per the IANA time zone
    # database (tzdata)</li> <li>name - the time zone name</li> <li>abbr - the
    # time zone abbreviation</li> <li>date - the current date within the time
    # zone (ISO format)</li> <li>time - the current time within the time zone
    # (ISO format)</li> </ul></td> </tr> </tbody> </table>
    # @return [List of Location]
    attr_accessor :locations

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['found'] = 'found'
      @_hash['locations'] = 'locations'
      @_hash
    end

    def initialize(found = nil,
                   locations = nil)
      @found = found
      @locations = locations
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      found = hash['found']
      # Parameter is an array, so we need to iterate through it
      locations = nil
      unless hash['locations'].nil?
        locations = []
        hash['locations'].each do |structure|
          locations << (Location.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      GeocodeAddressResponse.new(found,
                                 locations)
    end
  end
end
