# This file was automatically generated for NeutrinoAPI.com by APIMATIC BETA v2.0 on 12/10/2015

module NeutrinoApi
  class GeolocationController

    # Initializer with authentication and configuration parameters
    def initialize(user_id, api_key)
        @user_id = user_id;
        @api_key = api_key;
    end

    # Get location information about an IP address and do reverse DNS (PTR) lookups. See: https://www.neutrinoapi.com/api/ip-info/
    # @param [String] ip Required parameter: The IP address
    # @param [Boolean] reverse_lookup Optional parameter: Do reverse DNS (PTR) lookup. This option can add extra delay to the request so only use it if you need it
    # @return IPInfoResponse response from the API call
    def create_ip_info ip, reverse_lookup: false
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/ip-info"

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
        "output-case" => "camel",
        "reverse-lookup" => if reverse_lookup.nil? then false else reverse_lookup end
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:parameters

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Geocode an address or partial address. See: https://www.neutrinoapi.com/api/geocode-address/
    # @param [String] address Required parameter: The address or partial address to try and locate
    # @param [String] country_code Optional parameter: The ISO 2-letter country code to be biased towards (default is no country bias)
    # @param [String] language_code Optional parameter: The language to display results in
    # @return GeocodeAddressResponse response from the API call
    def create_geocode_address address, country_code: nil, language_code: "en"
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/geocode-address"

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
        "address" => address,
        "output-case" => "camel",
        "country-code" => country_code,
        "language-code" => if language_code.nil? then "en" else language_code end
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:parameters

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Reverse geocoding is the process of taking a coordinate (latitude and longitude) and mapping this to a real world address or location. See: https://www.neutrinoapi.com/api/geocode-reverse/
    # @param [Double] latitude Required parameter: The location latitude
    # @param [Double] longitude Required parameter: The location longitude
    # @param [String] language_code Optional parameter: The language to display results in
    # @return GeocodeReverseResponse response from the API call
    def create_geocode_reverse latitude, longitude, language_code: "en"
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/geocode-reverse"

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
        "latitude" => latitude,
        "longitude" => longitude,
        "output-case" => "camel",
        "language-code" => if language_code.nil? then "en" else language_code end
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