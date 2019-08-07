# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # EmailValidateResponse Model.
  class EmailValidateResponse < BaseModel
    # Is this a valid email
    # @return [Boolean]
    attr_accessor :valid

    # True if this address has a syntax error
    # @return [Boolean]
    attr_accessor :syntax_error

    # The email domain
    # @return [String]
    attr_accessor :domain

    # True if this address has a domain error (e.g. no valid mail server
    # records)
    # @return [Boolean]
    attr_accessor :domain_error

    # True if this address is a free-mail address
    # @return [Boolean]
    attr_accessor :is_freemail

    # The email address. If you have used the fix-typos option then this will be
    # the fixed address
    # @return [String]
    attr_accessor :email

    # True if this address is a disposable, temporary or darknet related email
    # address
    # @return [Boolean]
    attr_accessor :is_disposable

    # True if typos have been fixed
    # @return [Boolean]
    attr_accessor :typos_fixed

    # True if this address belongs to a person. False if this is a role based
    # address, e.g. admin@, help@, office@, etc.
    # @return [Boolean]
    attr_accessor :is_personal

    # The email service provider domain
    # @return [String]
    attr_accessor :provider

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['valid'] = 'valid'
      @_hash['syntax_error'] = 'syntaxError'
      @_hash['domain'] = 'domain'
      @_hash['domain_error'] = 'domainError'
      @_hash['is_freemail'] = 'isFreemail'
      @_hash['email'] = 'email'
      @_hash['is_disposable'] = 'isDisposable'
      @_hash['typos_fixed'] = 'typosFixed'
      @_hash['is_personal'] = 'isPersonal'
      @_hash['provider'] = 'provider'
      @_hash
    end

    def initialize(valid = nil,
                   syntax_error = nil,
                   domain = nil,
                   domain_error = nil,
                   is_freemail = nil,
                   email = nil,
                   is_disposable = nil,
                   typos_fixed = nil,
                   is_personal = nil,
                   provider = nil)
      @valid = valid
      @syntax_error = syntax_error
      @domain = domain
      @domain_error = domain_error
      @is_freemail = is_freemail
      @email = email
      @is_disposable = is_disposable
      @typos_fixed = typos_fixed
      @is_personal = is_personal
      @provider = provider
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      valid = hash['valid']
      syntax_error = hash['syntaxError']
      domain = hash['domain']
      domain_error = hash['domainError']
      is_freemail = hash['isFreemail']
      email = hash['email']
      is_disposable = hash['isDisposable']
      typos_fixed = hash['typosFixed']
      is_personal = hash['isPersonal']
      provider = hash['provider']

      # Create object from extracted values.
      EmailValidateResponse.new(valid,
                                syntax_error,
                                domain,
                                domain_error,
                                is_freemail,
                                email,
                                is_disposable,
                                typos_fixed,
                                is_personal,
                                provider)
    end
  end
end
