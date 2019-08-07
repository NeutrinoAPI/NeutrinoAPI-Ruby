# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # SMSVerifyResponse Model.
  class SMSVerifyResponse < BaseModel
    # True if this a valid phone number
    # @return [Boolean]
    attr_accessor :number_valid

    # The security code generated, you can save this code to perform your own
    # verification or you can use the <a
    # href="https://www.neutrinoapi.com/api/verify-security-code/">Verify
    # Security Code API</a>
    # @return [String]
    attr_accessor :security_code

    # True if the SMS has been sent
    # @return [Boolean]
    attr_accessor :sent

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['number_valid'] = 'numberValid'
      @_hash['security_code'] = 'securityCode'
      @_hash['sent'] = 'sent'
      @_hash
    end

    def initialize(number_valid = nil,
                   security_code = nil,
                   sent = nil)
      @number_valid = number_valid
      @security_code = security_code
      @sent = sent
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      number_valid = hash['numberValid']
      security_code = hash['securityCode']
      sent = hash['sent']

      # Create object from extracted values.
      SMSVerifyResponse.new(number_valid,
                            security_code,
                            sent)
    end
  end
end
