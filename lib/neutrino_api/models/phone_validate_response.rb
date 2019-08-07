# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # PhoneValidateResponse Model.
  class PhoneValidateResponse < BaseModel
    # Is this a valid phone number
    # @return [Boolean]
    attr_accessor :valid

    # The international calling code
    # @return [Integer]
    attr_accessor :international_calling_code

    # The phone number country as an ISO 2-letter country code
    # @return [String]
    attr_accessor :country_code

    # The phone number location. Could be a city, region or country depending on
    # the type of number
    # @return [String]
    attr_accessor :location

    # True if this is a mobile number. If the number type is unknown this value
    # will be false, use HLR lookup instead
    # @return [Boolean]
    attr_accessor :is_mobile

    # The predicted number type. Note: type detection is not possible in some
    # countries which have no predictable prefix pattern (you can use the HLR
    # Lookup API in these cases) Possible values are: <ul> <li>mobile</li>
    # <li>fixed-line</li> <li>premium-rate</li> <li>toll-free</li> <li>voip</li>
    # <li>unknown (use HLR lookup)</li> </ul>
    # @return [String]
    attr_accessor :type

    # The number represented in full international format (E.164)
    # @return [String]
    attr_accessor :international_number

    # The number represented in local dialing format
    # @return [String]
    attr_accessor :local_number

    # The phone number country
    # @return [String]
    attr_accessor :country

    # The phone number country as an ISO 3-letter country code
    # @return [String]
    attr_accessor :country_code3

    # ISO 4217 currency code associated with the country
    # @return [String]
    attr_accessor :currency_code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['valid'] = 'valid'
      @_hash['international_calling_code'] = 'internationalCallingCode'
      @_hash['country_code'] = 'countryCode'
      @_hash['location'] = 'location'
      @_hash['is_mobile'] = 'isMobile'
      @_hash['type'] = 'type'
      @_hash['international_number'] = 'internationalNumber'
      @_hash['local_number'] = 'localNumber'
      @_hash['country'] = 'country'
      @_hash['country_code3'] = 'countryCode3'
      @_hash['currency_code'] = 'currencyCode'
      @_hash
    end

    def initialize(valid = nil,
                   international_calling_code = nil,
                   country_code = nil,
                   location = nil,
                   is_mobile = nil,
                   type = nil,
                   international_number = nil,
                   local_number = nil,
                   country = nil,
                   country_code3 = nil,
                   currency_code = nil)
      @valid = valid
      @international_calling_code = international_calling_code
      @country_code = country_code
      @location = location
      @is_mobile = is_mobile
      @type = type
      @international_number = international_number
      @local_number = local_number
      @country = country
      @country_code3 = country_code3
      @currency_code = currency_code
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      valid = hash['valid']
      international_calling_code = hash['internationalCallingCode']
      country_code = hash['countryCode']
      location = hash['location']
      is_mobile = hash['isMobile']
      type = hash['type']
      international_number = hash['internationalNumber']
      local_number = hash['localNumber']
      country = hash['country']
      country_code3 = hash['countryCode3']
      currency_code = hash['currencyCode']

      # Create object from extracted values.
      PhoneValidateResponse.new(valid,
                                international_calling_code,
                                country_code,
                                location,
                                is_mobile,
                                type,
                                international_number,
                                local_number,
                                country,
                                country_code3,
                                currency_code)
    end
  end
end
