# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # ECommerce
  class ECommerce < BaseController
    @instance = ECommerce.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Perform a BIN (Bank Identification Number) or IIN (Issuer Identification
    # Number) lookup. See: https://www.neutrinoapi.com/api/bin-lookup/
    # @param [String] bin_number Required parameter: The BIN or IIN number (the
    # first 6 digits of a credit card number)
    # @param [String] customer_ip Optional parameter: Pass in the customers IP
    # address and we will return some extra information about them
    # @return BINLookupResponse response from the API call
    def bin_lookup(bin_number,
                   customer_ip = nil)
      # Prepare query url.
      _path_url = '/bin-lookup'
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
        'bin-number' => bin_number,
        'customer-ip' => customer_ip
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
      BINLookupResponse.from_hash(decoded)
    end
  end
end
