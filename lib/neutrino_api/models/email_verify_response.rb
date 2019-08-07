# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # EmailVerifyResponse Model.
  class EmailVerifyResponse < BaseModel
    # Is this a valid email address (syntax and domain is valid)
    # @return [Boolean]
    attr_accessor :valid

    # True if this address has passed SMTP verification. Check the smtp-status
    # and smtp-response fields for specific verification details
    # @return [Boolean]
    attr_accessor :verified

    # The email address. If you have used the fix-typos option then this will be
    # the fixed address
    # @return [String]
    attr_accessor :email

    # True if typos have been fixed
    # @return [Boolean]
    attr_accessor :typos_fixed

    # True if this address has a syntax error
    # @return [Boolean]
    attr_accessor :syntax_error

    # True if this address has a domain error (e.g. no valid mail server
    # records)
    # @return [Boolean]
    attr_accessor :domain_error

    # The email domain
    # @return [String]
    attr_accessor :domain

    # The email service provider domain
    # @return [String]
    attr_accessor :provider

    # True if this address is a free-mail address
    # @return [Boolean]
    attr_accessor :is_freemail

    # True if this address is a disposable, temporary or darknet related email
    # address
    # @return [Boolean]
    attr_accessor :is_disposable

    # True if this address is for a person. False if this is a role based
    # address, e.g. admin@, help@, office@, etc.
    # @return [Boolean]
    attr_accessor :is_personal

    # The SMTP verification status for the address: <ul> <li>ok - SMTP
    # verification was successful, this is a real address that can receive
    # mail</li> <li>invalid - this is not a valid email address (has either a
    # domain or syntax error)</li> <li>absent - this address is not registered
    # with the email service provider</li> <li>unresponsive - the mail server(s)
    # for this address timed-out or refused to open an SMTP connection</li>
    # <li>unknown - sorry, we could not reliably determine the real status of
    # this address (this address may or may not exist)</li> </ul>
    # @return [String]
    attr_accessor :smtp_status

    # The raw SMTP response message received during verification
    # @return [String]
    attr_accessor :smtp_response

    # True if this email domain has a catch-all policy (it will accept mail for
    # any username)
    # @return [Boolean]
    attr_accessor :is_catch_all

    # True if the mail server responded with a temporary failure (either a 4xx
    # response code or unresponsive server). You can retry this address later,
    # we recommend waiting at least 15 minutes before retrying
    # @return [Boolean]
    attr_accessor :is_deferred

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['valid'] = 'valid'
      @_hash['verified'] = 'verified'
      @_hash['email'] = 'email'
      @_hash['typos_fixed'] = 'typosFixed'
      @_hash['syntax_error'] = 'syntaxError'
      @_hash['domain_error'] = 'domainError'
      @_hash['domain'] = 'domain'
      @_hash['provider'] = 'provider'
      @_hash['is_freemail'] = 'isFreemail'
      @_hash['is_disposable'] = 'isDisposable'
      @_hash['is_personal'] = 'isPersonal'
      @_hash['smtp_status'] = 'smtpStatus'
      @_hash['smtp_response'] = 'smtpResponse'
      @_hash['is_catch_all'] = 'isCatchAll'
      @_hash['is_deferred'] = 'isDeferred'
      @_hash
    end

    def initialize(valid = nil,
                   verified = nil,
                   email = nil,
                   typos_fixed = nil,
                   syntax_error = nil,
                   domain_error = nil,
                   domain = nil,
                   provider = nil,
                   is_freemail = nil,
                   is_disposable = nil,
                   is_personal = nil,
                   smtp_status = nil,
                   smtp_response = nil,
                   is_catch_all = nil,
                   is_deferred = nil)
      @valid = valid
      @verified = verified
      @email = email
      @typos_fixed = typos_fixed
      @syntax_error = syntax_error
      @domain_error = domain_error
      @domain = domain
      @provider = provider
      @is_freemail = is_freemail
      @is_disposable = is_disposable
      @is_personal = is_personal
      @smtp_status = smtp_status
      @smtp_response = smtp_response
      @is_catch_all = is_catch_all
      @is_deferred = is_deferred
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      valid = hash['valid']
      verified = hash['verified']
      email = hash['email']
      typos_fixed = hash['typosFixed']
      syntax_error = hash['syntaxError']
      domain_error = hash['domainError']
      domain = hash['domain']
      provider = hash['provider']
      is_freemail = hash['isFreemail']
      is_disposable = hash['isDisposable']
      is_personal = hash['isPersonal']
      smtp_status = hash['smtpStatus']
      smtp_response = hash['smtpResponse']
      is_catch_all = hash['isCatchAll']
      is_deferred = hash['isDeferred']

      # Create object from extracted values.
      EmailVerifyResponse.new(valid,
                              verified,
                              email,
                              typos_fixed,
                              syntax_error,
                              domain_error,
                              domain,
                              provider,
                              is_freemail,
                              is_disposable,
                              is_personal,
                              smtp_status,
                              smtp_response,
                              is_catch_all,
                              is_deferred)
    end
  end
end
