# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # UserAgentInfoResponse Model.
  class UserAgentInfoResponse < BaseModel
    # The estimated mobile device screen width in CSS 'px'
    # @return [Integer]
    attr_accessor :mobile_screen_width

    # The mobile device brand
    # @return [String]
    attr_accessor :mobile_brand

    # The mobile device model
    # @return [String]
    attr_accessor :mobile_model

    # The producer or manufacturer of the user agent
    # @return [String]
    attr_accessor :producer

    # The browser software name
    # @return [String]
    attr_accessor :browser_name

    # The estimated mobile device screen height in CSS 'px'
    # @return [Integer]
    attr_accessor :mobile_screen_height

    # True if this is a mobile user agent
    # @return [Boolean]
    attr_accessor :is_mobile

    # The user agent type, possible values are: <ul> <li>desktop-browser</li>
    # <li>mobile-browser</li> <li>email-client</li> <li>feed-reader</li>
    # <li>software-library</li> <li>media-player (includes smart TVs)</li>
    # <li>robot</li> <li>unknown</li> </ul>
    # @return [String]
    attr_accessor :type

    # The browser software version
    # @return [String]
    attr_accessor :version

    # The full operating system name which may include the major version number
    # or code name
    # @return [String]
    attr_accessor :operating_system

    # The mobile device browser name (this is usually the same as the browser
    # name)
    # @return [String]
    attr_accessor :mobile_browser

    # True if this is an Android based mobile user agent
    # @return [Boolean]
    attr_accessor :is_android

    # True if this is an iOS based mobile user agent
    # @return [Boolean]
    attr_accessor :is_ios

    # The operating system family name, this is the OS name without any version
    # information
    # @return [String]
    attr_accessor :operating_system_family

    # The operating system version number (if detectable)
    # @return [String]
    attr_accessor :operating_system_version

    # The browser engine name
    # @return [String]
    attr_accessor :engine

    # The browser engine version (if detectable)
    # @return [String]
    attr_accessor :engine_version

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['mobile_screen_width'] = 'mobileScreenWidth'
      @_hash['mobile_brand'] = 'mobileBrand'
      @_hash['mobile_model'] = 'mobileModel'
      @_hash['producer'] = 'producer'
      @_hash['browser_name'] = 'browserName'
      @_hash['mobile_screen_height'] = 'mobileScreenHeight'
      @_hash['is_mobile'] = 'isMobile'
      @_hash['type'] = 'type'
      @_hash['version'] = 'version'
      @_hash['operating_system'] = 'operatingSystem'
      @_hash['mobile_browser'] = 'mobileBrowser'
      @_hash['is_android'] = 'isAndroid'
      @_hash['is_ios'] = 'isIos'
      @_hash['operating_system_family'] = 'operatingSystemFamily'
      @_hash['operating_system_version'] = 'operatingSystemVersion'
      @_hash['engine'] = 'engine'
      @_hash['engine_version'] = 'engineVersion'
      @_hash
    end

    def initialize(mobile_screen_width = nil,
                   mobile_brand = nil,
                   mobile_model = nil,
                   producer = nil,
                   browser_name = nil,
                   mobile_screen_height = nil,
                   is_mobile = nil,
                   type = nil,
                   version = nil,
                   operating_system = nil,
                   mobile_browser = nil,
                   is_android = nil,
                   is_ios = nil,
                   operating_system_family = nil,
                   operating_system_version = nil,
                   engine = nil,
                   engine_version = nil)
      @mobile_screen_width = mobile_screen_width
      @mobile_brand = mobile_brand
      @mobile_model = mobile_model
      @producer = producer
      @browser_name = browser_name
      @mobile_screen_height = mobile_screen_height
      @is_mobile = is_mobile
      @type = type
      @version = version
      @operating_system = operating_system
      @mobile_browser = mobile_browser
      @is_android = is_android
      @is_ios = is_ios
      @operating_system_family = operating_system_family
      @operating_system_version = operating_system_version
      @engine = engine
      @engine_version = engine_version
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      mobile_screen_width = hash['mobileScreenWidth']
      mobile_brand = hash['mobileBrand']
      mobile_model = hash['mobileModel']
      producer = hash['producer']
      browser_name = hash['browserName']
      mobile_screen_height = hash['mobileScreenHeight']
      is_mobile = hash['isMobile']
      type = hash['type']
      version = hash['version']
      operating_system = hash['operatingSystem']
      mobile_browser = hash['mobileBrowser']
      is_android = hash['isAndroid']
      is_ios = hash['isIos']
      operating_system_family = hash['operatingSystemFamily']
      operating_system_version = hash['operatingSystemVersion']
      engine = hash['engine']
      engine_version = hash['engineVersion']

      # Create object from extracted values.
      UserAgentInfoResponse.new(mobile_screen_width,
                                mobile_brand,
                                mobile_model,
                                producer,
                                browser_name,
                                mobile_screen_height,
                                is_mobile,
                                type,
                                version,
                                operating_system,
                                mobile_browser,
                                is_android,
                                is_ios,
                                operating_system_family,
                                operating_system_version,
                                engine,
                                engine_version)
    end
  end
end
