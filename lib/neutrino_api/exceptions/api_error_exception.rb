# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # API Error class.
  class APIErrorException < APIException
    # API error code. If set and > 0 then an API error has occurred your request
    # could not be completed
    # @return [Integer]
    attr_accessor :api_error

    # API error message
    # @return [String]
    attr_accessor :api_error_msg

    # The constructor.
    # @param [String] The reason for raising an exception.
    # @param [HttpContext] The HttpContext of the API call.
    def initialize(reason, context)
      super(reason, context)
      hash = APIHelper.json_deserialize(@context.response.raw_body)
      unbox(hash)
    end

    # Populates this object by extracting properties from a hash.
    # @param [Hash] The deserialized response sent by the server in the
    # response body.
    def unbox(hash)
      @api_error = hash['apiError']
      @api_error_msg = hash['apiErrorMsg']
    end
  end
end
