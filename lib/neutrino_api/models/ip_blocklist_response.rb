# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # IPBlocklistResponse Model.
  class IPBlocklistResponse < BaseModel
    # The IP address
    # @return [String]
    attr_accessor :ip

    # IP is hosting a malicious bot or is part of a botnet. Includes brute-force
    # crackers
    # @return [Boolean]
    attr_accessor :is_bot

    # IP is hosting an exploit finding bot or is running exploit scanning
    # software
    # @return [Boolean]
    attr_accessor :is_exploit_bot

    # IP is involved in distributing or is running malware
    # @return [Boolean]
    attr_accessor :is_malware

    # IP is running a hostile web spider / web crawler
    # @return [Boolean]
    attr_accessor :is_spider

    # IP has been flagged as an attack source on DShield (dshield.org)
    # @return [Boolean]
    attr_accessor :is_dshield

    # The number of blocklists the IP is listed on
    # @return [Integer]
    attr_accessor :list_count

    # IP has been detected as an anonymous web proxy or anonymous HTTP proxy
    # @return [Boolean]
    attr_accessor :is_proxy

    # IP is part of a hijacked netblock or a netblock controlled by a criminal
    # organization
    # @return [Boolean]
    attr_accessor :is_hijacked

    # IP is a Tor node or running a Tor related service
    # @return [Boolean]
    attr_accessor :is_tor

    # IP is involved in distributing or is running spyware
    # @return [Boolean]
    attr_accessor :is_spyware

    # IP address is hosting a spam bot, comment spamming or any other spamming
    # type software
    # @return [Boolean]
    attr_accessor :is_spam_bot

    # Is this IP on a blocklist
    # @return [Boolean]
    attr_accessor :is_listed

    # IP has been detected as belonging to a VPN provider
    # @return [Boolean]
    attr_accessor :is_vpn

    # The last time this IP was seen on a blocklist (in Unix time or 0 if not
    # listed recently)
    # @return [Integer]
    attr_accessor :last_seen

    # An array of strings indicating which blocklists this IP is listed on
    # (empty if not listed)
    # @return [List of String]
    attr_accessor :blocklists

    # An array of objects containing details on which sensors were used to
    # detect this IP
    # @return [List of String]
    attr_accessor :sensors

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['ip'] = 'ip'
      @_hash['is_bot'] = 'isBot'
      @_hash['is_exploit_bot'] = 'isExploitBot'
      @_hash['is_malware'] = 'isMalware'
      @_hash['is_spider'] = 'isSpider'
      @_hash['is_dshield'] = 'isDshield'
      @_hash['list_count'] = 'listCount'
      @_hash['is_proxy'] = 'isProxy'
      @_hash['is_hijacked'] = 'isHijacked'
      @_hash['is_tor'] = 'isTor'
      @_hash['is_spyware'] = 'isSpyware'
      @_hash['is_spam_bot'] = 'isSpamBot'
      @_hash['is_listed'] = 'isListed'
      @_hash['is_vpn'] = 'isVpn'
      @_hash['last_seen'] = 'lastSeen'
      @_hash['blocklists'] = 'blocklists'
      @_hash['sensors'] = 'sensors'
      @_hash
    end

    def initialize(ip = nil,
                   is_bot = nil,
                   is_exploit_bot = nil,
                   is_malware = nil,
                   is_spider = nil,
                   is_dshield = nil,
                   list_count = nil,
                   is_proxy = nil,
                   is_hijacked = nil,
                   is_tor = nil,
                   is_spyware = nil,
                   is_spam_bot = nil,
                   is_listed = nil,
                   is_vpn = nil,
                   last_seen = nil,
                   blocklists = nil,
                   sensors = nil)
      @ip = ip
      @is_bot = is_bot
      @is_exploit_bot = is_exploit_bot
      @is_malware = is_malware
      @is_spider = is_spider
      @is_dshield = is_dshield
      @list_count = list_count
      @is_proxy = is_proxy
      @is_hijacked = is_hijacked
      @is_tor = is_tor
      @is_spyware = is_spyware
      @is_spam_bot = is_spam_bot
      @is_listed = is_listed
      @is_vpn = is_vpn
      @last_seen = last_seen
      @blocklists = blocklists
      @sensors = sensors
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      ip = hash['ip']
      is_bot = hash['isBot']
      is_exploit_bot = hash['isExploitBot']
      is_malware = hash['isMalware']
      is_spider = hash['isSpider']
      is_dshield = hash['isDshield']
      list_count = hash['listCount']
      is_proxy = hash['isProxy']
      is_hijacked = hash['isHijacked']
      is_tor = hash['isTor']
      is_spyware = hash['isSpyware']
      is_spam_bot = hash['isSpamBot']
      is_listed = hash['isListed']
      is_vpn = hash['isVpn']
      last_seen = hash['lastSeen']
      blocklists = hash['blocklists']
      sensors = hash['sensors']

      # Create object from extracted values.
      IPBlocklistResponse.new(ip,
                              is_bot,
                              is_exploit_bot,
                              is_malware,
                              is_spider,
                              is_dshield,
                              list_count,
                              is_proxy,
                              is_hijacked,
                              is_tor,
                              is_spyware,
                              is_spam_bot,
                              is_listed,
                              is_vpn,
                              last_seen,
                              blocklists,
                              sensors)
    end
  end
end
