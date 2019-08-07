# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # WWW
  class WWW < BaseController
    @instance = WWW.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Parse, analyze and retrieve content from the supplied URL. See:
    # https://www.neutrinoapi.com/api/url-info/
    # @param [String] url Required parameter: The URL to probe
    # @param [Boolean] fetch_content Optional parameter: If this URL responds
    # with html, text, json or xml then return the response. This option is
    # useful if you want to perform further processing on the URL content (e.g.
    # with the HTML Extract or HTML Clean APIs)
    # @param [Boolean] ignore_certificate_errors Optional parameter: Ignore any
    # TLS/SSL certificate errors and load the URL anyway
    # @param [Integer] timeout Optional parameter: Timeout in seconds. Give up
    # if still trying to load the URL after this number of seconds
    # @return URLInfoResponse response from the API call
    def url_info(url,
                 fetch_content = false,
                 ignore_certificate_errors = false,
                 timeout = 20)
      # Prepare query url.
      _path_url = '/url-info'
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
        'url' => url,
        'fetch-content' => fetch_content,
        'ignore-certificate-errors' => ignore_certificate_errors,
        'timeout' => timeout
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
      URLInfoResponse.from_hash(decoded)
    end

    # Clean and sanitize untrusted HTML. See:
    # https://www.neutrinoapi.com/api/html-clean/
    # @param [String] content Required parameter: The HTML content. This can be
    # either a URL to load HTML from or an actual HTML content string
    # @param [String] output_type Required parameter: The level of sanitization,
    # possible values are: <b>plain-text</b>: reduce the content to plain text
    # only (no HTML tags at all) <b>simple-text</b>: allow only very basic text
    # formatting tags like b, em, i, strong, u <b>basic-html</b>: allow advanced
    # text formatting and hyper links <b>basic-html-with-images</b>: same as
    # basic html but also allows image tags <b>advanced-html</b>: same as basic
    # html with images but also allows many more common HTML tags like table,
    # ul, dl, pre
    # @return Binary response from the API call
    def html_clean(content,
                   output_type)
      # Prepare query url.
      _path_url = '/html-clean'
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'content' => content,
        'output-type' => output_type
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)
      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      CustomQueryAuth.apply(_request)
      _context = execute_request(_request, binary: true)
      validate_response(_context)
      # Return appropriate response type.
      _context.response.raw_body
    end

    # Browser bot can extract content, interact with keyboard and mouse events,
    # and execute JavaScript on a website. See:
    # https://www.neutrinoapi.com/api/browser-bot/
    # @param [String] url Required parameter: The URL to load
    # @param [Integer] timeout Optional parameter: Timeout in seconds. Give up
    # if still trying to load the page after this number of seconds
    # @param [Integer] delay Optional parameter: Delay in seconds to wait before
    # capturing any page data, executing selectors or JavaScript
    # @param [String] selector Optional parameter: Extract content from the page
    # DOM using this selector. Commonly known as a CSS selector, you can find a
    # good reference <a
    # href="https://www.w3schools.com/cssref/css_selectors.asp">here</a>
    # @param [List of String] exec Optional parameter: Execute JavaScript on the
    # page. Each array element should contain a valid JavaScript statement in
    # string form. If a statement returns any kind of value it will be returned
    # in the 'exec-results' response. For your convenience you can also use the
    # following special shortcut functions: <div> sleep(seconds); Just
    # wait/sleep for the specified number of seconds. click('selector'); Click
    # on the first element matching the given selector. focus('selector'); Focus
    # on the first element matching the given selector. keys('characters'); Send
    # the specified keyboard characters. Use click() or focus() first to send
    # keys to a specific element. enter(); Send the Enter key. tab(); Send the
    # Tab key. </div> Example: <div> [ "click('#button-id')", "sleep(1)",
    # "click('.field-class')", "keys('1234')", "enter()" ] </div>
    # @param [String] user_agent Optional parameter: Override the browsers
    # default user-agent string with this one
    # @param [Boolean] ignore_certificate_errors Optional parameter: Ignore any
    # TLS/SSL certificate errors and load the page anyway
    # @return BrowserBotResponse response from the API call
    def browser_bot(url,
                    timeout = 30,
                    delay = 3,
                    selector = nil,
                    exec = ,
                    user_agent = nil,
                    ignore_certificate_errors = false)
      # Prepare query url.
      _path_url = '/browser-bot'
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
        'url' => url,
        'timeout' => timeout,
        'delay' => delay,
        'selector' => selector,
        'exec' => exec,
        'user-agent' => user_agent,
        'ignore-certificate-errors' => ignore_certificate_errors
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
      BrowserBotResponse.from_hash(decoded)
    end
  end
end
