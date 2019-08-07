# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # IPProbeResponse Model.
  class IPProbeResponse < BaseModel
    # Is this a valid IPv4 or IPv6 address
    # @return [Boolean]
    attr_accessor :valid

    # Full country name
    # @return [String]
    attr_accessor :country

    # The detected provider type, possible values are: <ul> <li>isp - IP belongs
    # to an internet service provider. This includes both mobile, home and
    # business internet providers</li> <li>hosting - IP belongs to a hosting
    # company. This includes website hosting, cloud computing platforms and
    # colocation facilities</li> <li>vpn - IP belongs to a VPN provider</li>
    # <li>proxy - IP belongs to a proxy service. This includes HTTP/SOCKS
    # proxies and browser based proxies</li> <li>university - IP belongs to a
    # university/college/campus</li> <li>government - IP belongs to a government
    # department. This includes military facilities</li> <li>commercial - IP
    # belongs to a commercial entity such as a corporate headquarters or company
    # office</li> <li>unknown - could not identify the provider type</li> </ul>
    # @return [String]
    attr_accessor :provider_type

    # ISO 2-letter country code
    # @return [String]
    attr_accessor :country_code

    # The IPs full hostname (PTR)
    # @return [String]
    attr_accessor :hostname

    # The domain name of the provider
    # @return [String]
    attr_accessor :provider_domain

    # Full city name (if detectable)
    # @return [String]
    attr_accessor :city

    # The website URL for the provider
    # @return [String]
    attr_accessor :provider_website

    # The IP address
    # @return [String]
    attr_accessor :ip

    # Full region name (if detectable)
    # @return [String]
    attr_accessor :region

    # A description of the provider (usually extracted from the providers
    # website)
    # @return [String]
    attr_accessor :provider_description

    # ISO 2-letter continent code
    # @return [String]
    attr_accessor :continent_code

    # True if this IP belongs to a hosting company. Note that this can still be
    # true even if the provider type is VPN/proxy, this occurs in the case that
    # the IP is detected as both types
    # @return [Boolean]
    attr_accessor :is_hosting

    # True if this IP belongs to an internet service provider. Note that this
    # can still be true even if the provider type is VPN/proxy, this occurs in
    # the case that the IP is detected as both types
    # @return [Boolean]
    attr_accessor :is_isp

    # ISO 3-letter country code
    # @return [String]
    attr_accessor :country_code3

    # ISO 4217 currency code associated with the country
    # @return [String]
    attr_accessor :currency_code

    # True if this IP ia a VPN
    # @return [Boolean]
    attr_accessor :is_vpn

    # True if this IP ia a proxy
    # @return [Boolean]
    attr_accessor :is_proxy

    # The autonomous system (AS) number
    # @return [String]
    attr_accessor :asn

    # The autonomous system (AS) CIDR range
    # @return [String]
    attr_accessor :as_cidr

    # The autonomous system (AS) ISO 2-letter country code
    # @return [String]
    attr_accessor :as_country_code

    # The autonomous system (AS) ISO 3-letter country code
    # @return [String]
    attr_accessor :as_country_code3

    # Array of all the domains associated with the autonomous system (AS)
    # @return [List of String]
    attr_accessor :as_domains

    # The autonomous system (AS) description / company name
    # @return [String]
    attr_accessor :as_description

    # The age of the autonomous system (AS) in number of years since
    # registration
    # @return [Integer]
    attr_accessor :as_age

    # The IPs host domain
    # @return [String]
    attr_accessor :host_domain

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['valid'] = 'valid'
      @_hash['country'] = 'country'
      @_hash['provider_type'] = 'providerType'
      @_hash['country_code'] = 'countryCode'
      @_hash['hostname'] = 'hostname'
      @_hash['provider_domain'] = 'providerDomain'
      @_hash['city'] = 'city'
      @_hash['provider_website'] = 'providerWebsite'
      @_hash['ip'] = 'ip'
      @_hash['region'] = 'region'
      @_hash['provider_description'] = 'providerDescription'
      @_hash['continent_code'] = 'continentCode'
      @_hash['is_hosting'] = 'isHosting'
      @_hash['is_isp'] = 'isIsp'
      @_hash['country_code3'] = 'countryCode3'
      @_hash['currency_code'] = 'currencyCode'
      @_hash['is_vpn'] = 'isVpn'
      @_hash['is_proxy'] = 'isProxy'
      @_hash['asn'] = 'asn'
      @_hash['as_cidr'] = 'asCidr'
      @_hash['as_country_code'] = 'asCountryCode'
      @_hash['as_country_code3'] = 'asCountryCode3'
      @_hash['as_domains'] = 'asDomains'
      @_hash['as_description'] = 'asDescription'
      @_hash['as_age'] = 'asAge'
      @_hash['host_domain'] = 'hostDomain'
      @_hash
    end

    def initialize(valid = nil,
                   country = nil,
                   provider_type = nil,
                   country_code = nil,
                   hostname = nil,
                   provider_domain = nil,
                   city = nil,
                   provider_website = nil,
                   ip = nil,
                   region = nil,
                   provider_description = nil,
                   continent_code = nil,
                   is_hosting = nil,
                   is_isp = nil,
                   country_code3 = nil,
                   currency_code = nil,
                   is_vpn = nil,
                   is_proxy = nil,
                   asn = nil,
                   as_cidr = nil,
                   as_country_code = nil,
                   as_country_code3 = nil,
                   as_domains = nil,
                   as_description = nil,
                   as_age = nil,
                   host_domain = nil)
      @valid = valid
      @country = country
      @provider_type = provider_type
      @country_code = country_code
      @hostname = hostname
      @provider_domain = provider_domain
      @city = city
      @provider_website = provider_website
      @ip = ip
      @region = region
      @provider_description = provider_description
      @continent_code = continent_code
      @is_hosting = is_hosting
      @is_isp = is_isp
      @country_code3 = country_code3
      @currency_code = currency_code
      @is_vpn = is_vpn
      @is_proxy = is_proxy
      @asn = asn
      @as_cidr = as_cidr
      @as_country_code = as_country_code
      @as_country_code3 = as_country_code3
      @as_domains = as_domains
      @as_description = as_description
      @as_age = as_age
      @host_domain = host_domain
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      valid = hash['valid']
      country = hash['country']
      provider_type = hash['providerType']
      country_code = hash['countryCode']
      hostname = hash['hostname']
      provider_domain = hash['providerDomain']
      city = hash['city']
      provider_website = hash['providerWebsite']
      ip = hash['ip']
      region = hash['region']
      provider_description = hash['providerDescription']
      continent_code = hash['continentCode']
      is_hosting = hash['isHosting']
      is_isp = hash['isIsp']
      country_code3 = hash['countryCode3']
      currency_code = hash['currencyCode']
      is_vpn = hash['isVpn']
      is_proxy = hash['isProxy']
      asn = hash['asn']
      as_cidr = hash['asCidr']
      as_country_code = hash['asCountryCode']
      as_country_code3 = hash['asCountryCode3']
      as_domains = hash['asDomains']
      as_description = hash['asDescription']
      as_age = hash['asAge']
      host_domain = hash['hostDomain']

      # Create object from extracted values.
      IPProbeResponse.new(valid,
                          country,
                          provider_type,
                          country_code,
                          hostname,
                          provider_domain,
                          city,
                          provider_website,
                          ip,
                          region,
                          provider_description,
                          continent_code,
                          is_hosting,
                          is_isp,
                          country_code3,
                          currency_code,
                          is_vpn,
                          is_proxy,
                          asn,
                          as_cidr,
                          as_country_code,
                          as_country_code3,
                          as_domains,
                          as_description,
                          as_age,
                          host_domain)
    end
  end
end
