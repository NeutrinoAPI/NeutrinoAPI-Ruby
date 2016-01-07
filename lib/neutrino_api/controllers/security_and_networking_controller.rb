# This file was automatically generated for NeutrinoAPI.com by APIMATIC BETA v2.0 on 01/07/2016

module NeutrinoApi
  class SecurityAndNetworkingController

    # Initializer with authentication and configuration parameters
    def initialize(user_id, api_key)
        @user_id = user_id;
        @api_key = api_key;
    end

    # Parse, analyze and retrieve content from the supplied URL. See: https://www.neutrinoapi.com/api/url-info/
    # @param [Boolean] fetch_content Required parameter: If this URL responds with html, text, json or xml then return the response. This option is useful if you want to perform further processing on the URL content
    # @param [String] url Required parameter: The URL to process
    # @return URLInfoResponse response from the API call
    def url_info fetch_content, url
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/url-info"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        "user-id" => @user_id,
        "api-key" => @api_key,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json"
      }

      # prepare parameters
      parameters = {
        "fetch-content" => fetch_content,
        "output-case" => "camel",
        "url" => url
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:parameters

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Check the reputation of an IP address or domain against a comprehensive list of blacklists and blocklists (DNSBLs). See: https://www.neutrinoapi.com/api/host-reputation/
    # @param [String] host Required parameter: An IPv4 address or a domain name. If you supply a domain name it will be checked against the URI DNSBL list
    # @return HostReputationResponse response from the API call
    def host_reputation host
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/host-reputation"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        "user-id" => @user_id,
        "api-key" => @api_key,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json"
      }

      # prepare parameters
      parameters = {
        "host" => host,
        "output-case" => "camel"
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:parameters

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # The IP Blocklist API will detect potentially malicious or dangerous IP addresses. See: https://www.neutrinoapi.com/api/ip-blocklist/
    # @param [String] ip Required parameter: An IPv4 address
    # @return IPBlocklistResponse response from the API call
    def ip_blocklist ip
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/ip-blocklist"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        "user-id" => @user_id,
        "api-key" => @api_key,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json"
      }

      # prepare parameters
      parameters = {
        "ip" => ip,
        "output-case" => "camel"
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:parameters

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

  end
end