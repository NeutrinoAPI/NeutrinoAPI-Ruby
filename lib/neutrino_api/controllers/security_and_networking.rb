# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # SecurityAndNetworking
  class SecurityAndNetworking < BaseController
    @instance = SecurityAndNetworking.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Analyze and extract provider information for an IP address. See:
    # https://www.neutrinoapi.com/api/ip-probe/
    # @param [String] ip Required parameter: IPv4 or IPv6 address
    # @return IPProbeResponse response from the API call
    def ip_probe(ip)
      # Prepare query url.
      _path_url = '/ip-probe'
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'output-case' => 'camel',
        'ip' => ip
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)
      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      CustomQueryAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      IPProbeResponse.from_hash(decoded)
    end

    # SMTP based email address verification. See:
    # https://www.neutrinoapi.com/api/email-verify/
    # @param [String] email Required parameter: An email address
    # @param [Boolean] fix_typos Optional parameter: Automatically attempt to
    # fix typos in the address
    # @return EmailVerifyResponse response from the API call
    def email_verify(email,
                     fix_typos = false)
      # Prepare query url.
      _path_url = '/email-verify'
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'email' => email,
        'output-case' => 'camel',
        'fix-typos' => fix_typos
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)
      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      CustomQueryAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      EmailVerifyResponse.from_hash(decoded)
    end

    # The IP Blocklist API will detect potentially malicious or dangerous IP
    # addresses. See: https://www.neutrinoapi.com/api/ip-blocklist/
    # @param [String] ip Required parameter: An IPv4 or IPv6 address
    # @return IPBlocklistResponse response from the API call
    def ip_blocklist(ip)
      # Prepare query url.
      _path_url = '/ip-blocklist'
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'output-case' => 'camel',
        'ip' => ip
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)
      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      CustomQueryAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      IPBlocklistResponse.from_hash(decoded)
    end

    # Check the reputation of an IP address, domain name, FQDN or URL against a
    # comprehensive list of blacklists and blocklists. See:
    # https://www.neutrinoapi.com/api/host-reputation/
    # @param [String] host Required parameter: An IP address, domain name, FQDN
    # or URL. If you supply a domain/URL it will be checked against the URI
    # DNSBL lists
    # @param [Integer] list_rating Optional parameter: Only check lists with
    # this rating or better
    # @return HostReputationResponse response from the API call
    def host_reputation(host,
                        list_rating = 3)
      # Prepare query url.
      _path_url = '/host-reputation'
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'output-case' => 'camel',
        'host' => host,
        'list-rating' => list_rating
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)
      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      CustomQueryAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      HostReputationResponse.from_hash(decoded)
    end
  end
end
