# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # BINLookupResponse Model.
  class BINLookupResponse < BaseModel
    # The full country name of the issuer
    # @return [String]
    attr_accessor :country

    # The city of the customers IP (if detectable)
    # @return [String]
    attr_accessor :ip_city

    # True if the customers IP country matches the BIN country
    # @return [Boolean]
    attr_accessor :ip_matches_bin

    # The card type, will always be one of: DEBIT, CREDIT, CHARGE CARD
    # @return [String]
    attr_accessor :card_type

    # The card category. There are many different card categories the most
    # common card categories are: CLASSIC, BUSINESS, CORPORATE, PLATINUM,
    # PREPAID
    # @return [String]
    attr_accessor :card_category

    # The ISO 2-letter country code of the customers IP
    # @return [String]
    attr_accessor :ip_country_code

    # The country of the customers IP
    # @return [String]
    attr_accessor :ip_country

    # The card issuer
    # @return [String]
    attr_accessor :issuer

    # True if the customers IP is listed on one of our blocklists, see the <a
    # href="http://www.neutrinoapi.com/api/ip-blocklist/">IP Blocklist API</a>
    # @return [Boolean]
    attr_accessor :ip_blocklisted

    # Is this a valid BIN or IIN number
    # @return [Boolean]
    attr_accessor :valid

    # An array of strings indicating which blocklists this IP is listed on
    # @return [List of String]
    attr_accessor :ip_blocklists

    # The card issuers website
    # @return [String]
    attr_accessor :issuer_website

    # The ISO 2-letter country code of the issuer
    # @return [String]
    attr_accessor :country_code

    # The region of the customers IP (if detectable)
    # @return [String]
    attr_accessor :ip_region

    # The card brand (e.g. Visa or Mastercard)
    # @return [String]
    attr_accessor :card_brand

    # The card issuers phone number
    # @return [String]
    attr_accessor :issuer_phone

    # The ISO 3-letter country code of the issuer
    # @return [String]
    attr_accessor :country_code3

    # ISO 4217 currency code associated with the country of the issuer
    # @return [String]
    attr_accessor :currency_code

    # The ISO 3-letter country code of the customers IP
    # @return [String]
    attr_accessor :ip_country_code3

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['country'] = 'country'
      @_hash['ip_city'] = 'ipCity'
      @_hash['ip_matches_bin'] = 'ipMatchesBin'
      @_hash['card_type'] = 'cardType'
      @_hash['card_category'] = 'cardCategory'
      @_hash['ip_country_code'] = 'ipCountryCode'
      @_hash['ip_country'] = 'ipCountry'
      @_hash['issuer'] = 'issuer'
      @_hash['ip_blocklisted'] = 'ipBlocklisted'
      @_hash['valid'] = 'valid'
      @_hash['ip_blocklists'] = 'ipBlocklists'
      @_hash['issuer_website'] = 'issuerWebsite'
      @_hash['country_code'] = 'countryCode'
      @_hash['ip_region'] = 'ipRegion'
      @_hash['card_brand'] = 'cardBrand'
      @_hash['issuer_phone'] = 'issuerPhone'
      @_hash['country_code3'] = 'countryCode3'
      @_hash['currency_code'] = 'currencyCode'
      @_hash['ip_country_code3'] = 'ipCountryCode3'
      @_hash
    end

    def initialize(country = nil,
                   ip_city = nil,
                   ip_matches_bin = nil,
                   card_type = nil,
                   card_category = nil,
                   ip_country_code = nil,
                   ip_country = nil,
                   issuer = nil,
                   ip_blocklisted = nil,
                   valid = nil,
                   ip_blocklists = nil,
                   issuer_website = nil,
                   country_code = nil,
                   ip_region = nil,
                   card_brand = nil,
                   issuer_phone = nil,
                   country_code3 = nil,
                   currency_code = nil,
                   ip_country_code3 = nil)
      @country = country
      @ip_city = ip_city
      @ip_matches_bin = ip_matches_bin
      @card_type = card_type
      @card_category = card_category
      @ip_country_code = ip_country_code
      @ip_country = ip_country
      @issuer = issuer
      @ip_blocklisted = ip_blocklisted
      @valid = valid
      @ip_blocklists = ip_blocklists
      @issuer_website = issuer_website
      @country_code = country_code
      @ip_region = ip_region
      @card_brand = card_brand
      @issuer_phone = issuer_phone
      @country_code3 = country_code3
      @currency_code = currency_code
      @ip_country_code3 = ip_country_code3
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      country = hash['country']
      ip_city = hash['ipCity']
      ip_matches_bin = hash['ipMatchesBin']
      card_type = hash['cardType']
      card_category = hash['cardCategory']
      ip_country_code = hash['ipCountryCode']
      ip_country = hash['ipCountry']
      issuer = hash['issuer']
      ip_blocklisted = hash['ipBlocklisted']
      valid = hash['valid']
      ip_blocklists = hash['ipBlocklists']
      issuer_website = hash['issuerWebsite']
      country_code = hash['countryCode']
      ip_region = hash['ipRegion']
      card_brand = hash['cardBrand']
      issuer_phone = hash['issuerPhone']
      country_code3 = hash['countryCode3']
      currency_code = hash['currencyCode']
      ip_country_code3 = hash['ipCountryCode3']

      # Create object from extracted values.
      BINLookupResponse.new(country,
                            ip_city,
                            ip_matches_bin,
                            card_type,
                            card_category,
                            ip_country_code,
                            ip_country,
                            issuer,
                            ip_blocklisted,
                            valid,
                            ip_blocklists,
                            issuer_website,
                            country_code,
                            ip_region,
                            card_brand,
                            issuer_phone,
                            country_code3,
                            currency_code,
                            ip_country_code3)
    end
  end
end
