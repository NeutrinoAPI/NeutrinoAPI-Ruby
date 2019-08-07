# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # Utility class for custom query_parameter authorization.
  class CustomQueryAuth
    # Add custom authentication to the request.
    # @param [HttpRequest] The HttpRequest object to which authentication will
    # be added.
    def self.apply(http_request)
      http_request.add_query_parameter('user-id', Configuration.user_id)
      http_request.add_query_parameter('api-key', Configuration.api_key)
    end
  end
end
