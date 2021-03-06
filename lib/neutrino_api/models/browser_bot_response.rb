# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # BrowserBotResponse Model.
  class BrowserBotResponse < BaseModel
    # The page URL
    # @return [String]
    attr_accessor :url

    # The complete raw, decompressed and decoded page content. Usually will be
    # either HTML, JSON or XML
    # @return [String]
    attr_accessor :content

    # The document MIME type
    # @return [String]
    attr_accessor :mime_type

    # The document title
    # @return [String]
    attr_accessor :title

    # True if an error has occurred loading the page. Check the 'error-message'
    # field for details
    # @return [Boolean]
    attr_accessor :is_error

    # True if a timeout occurred while loading the page. You can set the timeout
    # with the request parameter 'timeout'
    # @return [Boolean]
    attr_accessor :is_timeout

    # Contains the error message if an error has occurred ('is-error' will be
    # true)
    # @return [String]
    attr_accessor :error_message

    # The HTTP status code the URL returned
    # @return [Integer]
    attr_accessor :http_status_code

    # The HTTP status message the URL returned
    # @return [String]
    attr_accessor :http_status_message

    # True if the HTTP status is OK (200)
    # @return [Boolean]
    attr_accessor :is_http_ok

    # True if the URL responded with an HTTP redirect
    # @return [Boolean]
    attr_accessor :is_http_redirect

    # The redirected URL if the URL responded with an HTTP redirect
    # @return [String]
    attr_accessor :http_redirect_url

    # The HTTP servers IP address
    # @return [String]
    attr_accessor :server_ip

    # The number of seconds taken to load the page (from initial request until
    # DOM ready)
    # @return [Integer]
    attr_accessor :load_time

    # Map containing all the HTTP response headers the URL responded with
    # @return [Array<String, String>]
    attr_accessor :response_headers

    # True if the page is secured using TLS/SSL
    # @return [Boolean]
    attr_accessor :is_secure

    # Map containing details of the TLS/SSL setup
    # @return [Array<String, String>]
    attr_accessor :security_details

    # Array containing all the elements matching the supplied selector. Each
    # element object will contain the text content, HTML content and all current
    # element attributes
    # @return [List of String]
    attr_accessor :elements

    # If you executed any JavaScript this array holds the results as objects
    # @return [List of String]
    attr_accessor :exec_results

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['url'] = 'url'
      @_hash['content'] = 'content'
      @_hash['mime_type'] = 'mimeType'
      @_hash['title'] = 'title'
      @_hash['is_error'] = 'isError'
      @_hash['is_timeout'] = 'isTimeout'
      @_hash['error_message'] = 'errorMessage'
      @_hash['http_status_code'] = 'httpStatusCode'
      @_hash['http_status_message'] = 'httpStatusMessage'
      @_hash['is_http_ok'] = 'isHttpOk'
      @_hash['is_http_redirect'] = 'isHttpRedirect'
      @_hash['http_redirect_url'] = 'httpRedirectUrl'
      @_hash['server_ip'] = 'serverIp'
      @_hash['load_time'] = 'loadTime'
      @_hash['response_headers'] = 'responseHeaders'
      @_hash['is_secure'] = 'isSecure'
      @_hash['security_details'] = 'securityDetails'
      @_hash['elements'] = 'elements'
      @_hash['exec_results'] = 'execResults'
      @_hash
    end

    def initialize(url = nil,
                   content = nil,
                   mime_type = nil,
                   title = nil,
                   is_error = nil,
                   is_timeout = nil,
                   error_message = nil,
                   http_status_code = nil,
                   http_status_message = nil,
                   is_http_ok = nil,
                   is_http_redirect = nil,
                   http_redirect_url = nil,
                   server_ip = nil,
                   load_time = nil,
                   response_headers = nil,
                   is_secure = nil,
                   security_details = nil,
                   elements = nil,
                   exec_results = nil)
      @url = url
      @content = content
      @mime_type = mime_type
      @title = title
      @is_error = is_error
      @is_timeout = is_timeout
      @error_message = error_message
      @http_status_code = http_status_code
      @http_status_message = http_status_message
      @is_http_ok = is_http_ok
      @is_http_redirect = is_http_redirect
      @http_redirect_url = http_redirect_url
      @server_ip = server_ip
      @load_time = load_time
      @response_headers = response_headers
      @is_secure = is_secure
      @security_details = security_details
      @elements = elements
      @exec_results = exec_results
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      url = hash['url']
      content = hash['content']
      mime_type = hash['mimeType']
      title = hash['title']
      is_error = hash['isError']
      is_timeout = hash['isTimeout']
      error_message = hash['errorMessage']
      http_status_code = hash['httpStatusCode']
      http_status_message = hash['httpStatusMessage']
      is_http_ok = hash['isHttpOk']
      is_http_redirect = hash['isHttpRedirect']
      http_redirect_url = hash['httpRedirectUrl']
      server_ip = hash['serverIp']
      load_time = hash['loadTime']
      response_headers = hash['responseHeaders']
      is_secure = hash['isSecure']
      security_details = hash['securityDetails']
      elements = hash['elements']
      exec_results = hash['execResults']

      # Create object from extracted values.
      BrowserBotResponse.new(url,
                             content,
                             mime_type,
                             title,
                             is_error,
                             is_timeout,
                             error_message,
                             http_status_code,
                             http_status_message,
                             is_http_ok,
                             is_http_redirect,
                             http_redirect_url,
                             server_ip,
                             load_time,
                             response_headers,
                             is_secure,
                             security_details,
                             elements,
                             exec_results)
    end
  end
end
