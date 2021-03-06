# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # DataTools
  class DataTools < BaseController
    @instance = DataTools.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Parse, validate and clean an email address. See:
    # https://www.neutrinoapi.com/api/email-validate/
    # @param [String] email Required parameter: An email address
    # @param [Boolean] fix_typos Optional parameter: Automatically attempt to
    # fix typos in the address
    # @return EmailValidateResponse response from the API call
    def email_validate(email,
                       fix_typos = false)
      # Prepare query url.
      _path_url = '/email-validate'
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
        'email' => email,
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
      EmailValidateResponse.from_hash(decoded)
    end

    # Parse, validate and get detailed user-agent information from a user agent
    # string. See: https://www.neutrinoapi.com/api/user-agent-info/
    # @param [String] user_agent Required parameter: A user agent string
    # @return UserAgentInfoResponse response from the API call
    def user_agent_info(user_agent)
      # Prepare query url.
      _path_url = '/user-agent-info'
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
        'user-agent' => user_agent
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
      UserAgentInfoResponse.from_hash(decoded)
    end

    # Detect bad words, swear words and profanity in a given text. See:
    # https://www.neutrinoapi.com/api/bad-word-filter/
    # @param [String] content Required parameter: The content to scan. This can
    # be either a URL to load content from or an actual content string
    # @param [String] censor_character Optional parameter: The character to use
    # to censor out the bad words found
    # @return BadWordFilterResponse response from the API call
    def bad_word_filter(content,
                        censor_character = nil)
      # Prepare query url.
      _path_url = '/bad-word-filter'
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
        'content' => content,
        'censor-character' => censor_character
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
      BadWordFilterResponse.from_hash(decoded)
    end

    # A powerful unit conversion tool. See:
    # https://www.neutrinoapi.com/api/convert/
    # @param [String] from_value Required parameter: The value to convert from
    # (e.g. 10.95)
    # @param [String] from_type Required parameter: The type of the value to
    # convert from (e.g. USD)
    # @param [String] to_type Required parameter: The type to convert to (e.g.
    # EUR)
    # @return ConvertResponse response from the API call
    def convert(from_value,
                from_type,
                to_type)
      # Prepare query url.
      _path_url = '/convert'
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
        'from-value' => from_value,
        'from-type' => from_type,
        'to-type' => to_type
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
      ConvertResponse.from_hash(decoded)
    end

    # Parse, validate and get location information about a phone number. See:
    # https://www.neutrinoapi.com/api/phone-validate/
    # @param [String] number Required parameter: A phone number. This can be in
    # international format (E.164) or local format. If passing local format you
    # should use the 'country-code' or 'ip' options as well
    # @param [String] country_code Optional parameter: ISO 2-letter country
    # code, assume numbers are based in this country. If not set numbers are
    # assumed to be in international format (with or without the leading +
    # sign)
    # @param [String] ip Optional parameter: Pass in a users IP address and we
    # will assume numbers are based in the country of the IP address
    # @return PhoneValidateResponse response from the API call
    def phone_validate(number,
                       country_code = nil,
                       ip = nil)
      # Prepare query url.
      _path_url = '/phone-validate'
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
        'number' => number,
        'country-code' => country_code,
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
      PhoneValidateResponse.from_hash(decoded)
    end
  end
end
