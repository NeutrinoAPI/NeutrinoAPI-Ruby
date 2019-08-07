# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # VerifySecurityCodeResponse Model.
  class VerifySecurityCodeResponse < BaseModel
    # True if the code is valid
    # @return [Boolean]
    attr_accessor :verified

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['verified'] = 'verified'
      @_hash
    end

    def initialize(verified = nil)
      @verified = verified
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      verified = hash['verified']

      # Create object from extracted values.
      VerifySecurityCodeResponse.new(verified)
    end
  end
end
