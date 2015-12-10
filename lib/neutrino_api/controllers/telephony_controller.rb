# This file was automatically generated for NeutrinoAPI.com by APIMATIC BETA v2.0 on 12/10/2015

module NeutrinoApi
  class TelephonyController

    # Initializer with authentication and configuration parameters
    def initialize(user_id, api_key)
        @user_id = user_id;
        @api_key = api_key;
    end

    # Make an automated call to any valid phone number and playback an audio message. See: https://www.neutrinoapi.com/api/phone-playback/
    # @param [String] audio_url Required parameter: A URL to a valid audio file. Accepted audio formats are: MP3, WAV, OGG
    # @param [String] number Required parameter: The phone number to call. Must be valid international format
    # @return PhonePlaybackResponse response from the API call
    def create_phone_playback audio_url, number
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/phone-playback"

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
        "audio-url" => audio_url,
        "number" => number,
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

    # Check if a security code from one of the verify APIs is valid. See: https://www.neutrinoapi.com/api/verify-security-code/
    # @param [Numeric] security_code Required parameter: The security code to verify
    # @return VerifySecurityCodeResponse response from the API call
    def create_verify_security_code security_code
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/verify-security-code"

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
        "output-case" => "camel",
        "security-code" => security_code
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:parameters

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Mobile network HLR lookup service. See: https://www.neutrinoapi.com/api/hlr-lookup/
    # @param [String] number Required parameter: A phone number
    # @param [String] country_code Optional parameter: ISO 2-letter country code, assume numbers are based in this country. If not set numbers are assumed to be in international format (with or without the leading + sign)
    # @return HLRLookupResponse response from the API call
    def create_hlr_lookup number, country_code: nil
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/hlr-lookup"

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
        "number" => number,
        "output-case" => "camel",
        "country-code" => country_code
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:parameters

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Make an automated call to any valid phone number and playback a unique security code. See: https://www.neutrinoapi.com/api/phone-verify/
    # @param [String] number Required parameter: The phone number to send the verification code to
    # @param [Numeric] code_length Optional parameter: The number of digits to use in the security code (between 4 and 12)
    # @param [String] country_code Optional parameter: ISO 2-letter country code, assume numbers are based in this country. If not set numbers are assumed to be in international format (with or without the leading + sign)
    # @param [String] language_code Optional parameter: The language to playback the verification code in, available languages are: de - German, en - English, es - Spanish, fr - Fench, it - Italian, pt - Portuguese, ru - Russian
    # @param [Numeric] playback_delay Optional parameter: The delay in milliseconds between the playback of each security code
    # @param [Numeric] security_code Optional parameter: Pass in your own security code. This is useful if you have implemented TOTP or similar 2FA methods. If not set then we will generate a secure random code (only numerical security codes are currently supported)
    # @return PhoneVerifyResponse response from the API call
    def create_phone_verify number, code_length: 6, country_code: nil, language_code: "en", playback_delay: 800, security_code: nil
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/phone-verify"

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
        "number" => number,
        "output-case" => "camel",
        "code-length" => if code_length.nil? then 6 else code_length end,
        "country-code" => country_code,
        "language-code" => if language_code.nil? then "en" else language_code end,
        "playback-delay" => if playback_delay.nil? then 800 else playback_delay end,
        "security-code" => security_code
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:parameters

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Send a unique security code to any mobile device via SMS. See: https://www.neutrinoapi.com/api/sms-verify/
    # @param [String] number Required parameter: The phone number to send a verification code to
    # @param [Numeric] code_length Optional parameter: The number of digits to use in the security code (must be between 4 and 12)
    # @param [String] country_code Optional parameter: ISO 2-letter country code, assume numbers are based in this country. If not set numbers are assumed to be in international format (with or without the leading + sign)
    # @param [String] language_code Optional parameter: The language to send the verification code in, available languages are: de - German, en - English, es - Spanish, fr - Fench, it - Italian, pt - Portuguese, ru - Russian
    # @param [Numeric] security_code Optional parameter: ass in your own security code. This is useful if you have implemented TOTP or similar 2FA methods. If not set then we will generate a secure random code (only numerical security codes are currently supported)
    # @return SMSVerifyResponse response from the API call
    def create_sms_verify number, code_length: 5, country_code: nil, language_code: "en", security_code: nil
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/sms-verify"

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
        "number" => number,
        "output-case" => "camel",
        "code-length" => if code_length.nil? then 5 else code_length end,
        "country-code" => country_code,
        "language-code" => if language_code.nil? then "en" else language_code end,
        "security-code" => security_code
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