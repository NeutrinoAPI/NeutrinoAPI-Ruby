# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # Telephony
  class Telephony < BaseController
    @instance = Telephony.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Check if a security code from one of the verify APIs is valid. See:
    # https://www.neutrinoapi.com/api/verify-security-code/
    # @param [String] security_code Required parameter: The security code to
    # verify
    # @return VerifySecurityCodeResponse response from the API call
    def verify_security_code(security_code)
      # Prepare query url.
      _path_url = '/verify-security-code'
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'output-case' => 'camel',
        'security-code' => security_code
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
      VerifySecurityCodeResponse.from_hash(decoded)
    end

    # Connect to the global mobile cellular network and retrieve the status of a
    # mobile device. See: https://www.neutrinoapi.com/api/hlr-lookup/
    # @param [String] number Required parameter: A phone number
    # @param [String] country_code Optional parameter: ISO 2-letter country
    # code, assume numbers are based in this country. If not set numbers are
    # assumed to be in international format (with or without the leading +
    # sign)
    # @return HLRLookupResponse response from the API call
    def hlr_lookup(number,
                   country_code = nil)
      # Prepare query url.
      _path_url = '/hlr-lookup'
      _query_builder = Configuration.base_uri.dup
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
        'country-code' => country_code
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
      HLRLookupResponse.from_hash(decoded)
    end

    # Make an automated call to any valid phone number and playback an audio
    # message. See: https://www.neutrinoapi.com/api/phone-playback/
    # @param [String] number Required parameter: The phone number to call. Must
    # be in valid international format
    # @param [String] audio_url Required parameter: A URL to a valid audio file.
    # Accepted audio formats are: <ul> <li>MP3</li> <li>WAV</li> <li>OGG</li>
    # </ul>You can use the following MP3 URL for testing:
    # https://www.neutrinoapi.com/test-files/test1.mp3
    # @return PhonePlaybackResponse response from the API call
    def phone_playback(number,
                       audio_url)
      # Prepare query url.
      _path_url = '/phone-playback'
      _query_builder = Configuration.base_uri.dup
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
        'audio-url' => audio_url
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
      PhonePlaybackResponse.from_hash(decoded)
    end

    # Send a unique security code to any mobile device via SMS. See:
    # https://www.neutrinoapi.com/api/sms-verify/
    # @param [String] number Required parameter: The phone number to send a
    # verification code to
    # @param [Integer] code_length Optional parameter: The number of digits to
    # use in the security code (must be between 4 and 12)
    # @param [Integer] security_code Optional parameter: Pass in your own
    # security code. This is useful if you have implemented TOTP or similar 2FA
    # methods. If not set then we will generate a secure random code
    # @param [String] country_code Optional parameter: ISO 2-letter country
    # code, assume numbers are based in this country. If not set numbers are
    # assumed to be in international format (with or without the leading +
    # sign)
    # @param [String] language_code Optional parameter: The language to send the
    # verification code in, available languages are: <ul> <li>de - German</li>
    # <li>en - English</li> <li>es - Spanish</li> <li>fr - French</li> <li>it -
    # Italian</li> <li>pt - Portuguese</li> <li>ru - Russian</li> </ul>
    # @return SMSVerifyResponse response from the API call
    def sms_verify(number,
                   code_length = 5,
                   security_code = nil,
                   country_code = nil,
                   language_code = 'en')
      # Prepare query url.
      _path_url = '/sms-verify'
      _query_builder = Configuration.base_uri.dup
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
        'code-length' => code_length,
        'security-code' => security_code,
        'country-code' => country_code,
        'language-code' => language_code
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
      SMSVerifyResponse.from_hash(decoded)
    end

    # Send a free-form message to any mobile device via SMS. See:
    # https://www.neutrinoapi.com/api/sms-message/
    # @param [String] number Required parameter: The phone number to send a
    # message to
    # @param [String] message Required parameter: The SMS message to send.
    # Messages are truncated to a maximum of 150 characters for ASCII content OR
    # 70 characters for UTF content
    # @param [String] country_code Optional parameter: ISO 2-letter country
    # code, assume numbers are based in this country. If not set numbers are
    # assumed to be in international format (with or without the leading +
    # sign)
    # @return SMSMessageResponse response from the API call
    def sms_message(number,
                    message,
                    country_code = nil)
      # Prepare query url.
      _path_url = '/sms-message'
      _query_builder = Configuration.base_uri.dup
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
        'message' => message,
        'country-code' => country_code
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
      SMSMessageResponse.from_hash(decoded)
    end

    # Make an automated call to any valid phone number and playback a unique
    # security code. See: https://www.neutrinoapi.com/api/phone-verify/
    # @param [String] number Required parameter: The phone number to send the
    # verification code to
    # @param [Integer] code_length Optional parameter: The number of digits to
    # use in the security code (between 4 and 12)
    # @param [Integer] security_code Optional parameter: Pass in your own
    # security code. This is useful if you have implemented TOTP or similar 2FA
    # methods. If not set then we will generate a secure random code
    # @param [Integer] playback_delay Optional parameter: The delay in
    # milliseconds between the playback of each security code
    # @param [String] country_code Optional parameter: ISO 2-letter country
    # code, assume numbers are based in this country. If not set numbers are
    # assumed to be in international format (with or without the leading +
    # sign)
    # @param [String] language_code Optional parameter: The language to playback
    # the verification code in, available languages are: <ul> <li>de -
    # German</li> <li>en - English</li> <li>es - Spanish</li> <li>fr -
    # French</li> <li>it - Italian</li> <li>pt - Portuguese</li> <li>ru -
    # Russian</li> </ul>
    # @return PhoneVerifyResponse response from the API call
    def phone_verify(number,
                     code_length = 6,
                     security_code = nil,
                     playback_delay = 800,
                     country_code = nil,
                     language_code = 'en')
      # Prepare query url.
      _path_url = '/phone-verify'
      _query_builder = Configuration.base_uri.dup
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
        'code-length' => code_length,
        'security-code' => security_code,
        'playback-delay' => playback_delay,
        'country-code' => country_code,
        'language-code' => language_code
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
      PhoneVerifyResponse.from_hash(decoded)
    end
  end
end
