# This file was automatically generated for NeutrinoAPI.com by APIMATIC BETA v2.0 on 01/07/2016

module NeutrinoApi
  class DataToolsController

    # Initializer with authentication and configuration parameters
    def initialize(user_id, api_key)
        @user_id = user_id;
        @api_key = api_key;
    end

    # Parse, validate and get location information about a phone number. See: https://www.neutrinoapi.com/api/phone-validate/
    # @param [String] number Required parameter: The phone number
    # @param [String] country_code Optional parameter: ISO 2-letter country code, assume numbers are based in this country. If not set numbers are assumed to be in international format (with or without the leading + sign)
    # @return PhoneValidateResponse response from the API call
    def phone_validate number, country_code: nil
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/phone-validate"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        "user-id" => @user_id,
        "api-key" => @api_key,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json"
      }

      # prepare parameters
      parameters = {
        "number" => number,
        "output-case" => "camel",
        "country-code" => country_code
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:parameters

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Parse, validate and get detailed user-agent information from a user-agent string. See: https://www.neutrinoapi.com/api/user-agent-info/
    # @param [String] user_agent Required parameter: A user-agent string
    # @return UserAgentInfoResponse response from the API call
    def user_agent_info user_agent
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/user-agent-info"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        "user-id" => @user_id,
        "api-key" => @api_key,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json"
      }

      # prepare parameters
      parameters = {
        "output-case" => "camel",
        "user-agent" => user_agent
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:parameters

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Code highlight will take raw source code and convert into nicely formatted HTML with syntax and keyword highlighting. See: https://www.neutrinoapi.com/api/code-highlight/
    # @param [String] content Required parameter: The source content. This can be either a URL to load from or an actual content string
    # @param [String] type Required parameter: The code type. See the API docs for all supported types
    # @param [Boolean] add_keyword_links Optional parameter: Add links on source code keywords to the relevant language documentation
    # @return Binary response from the API call
    def code_highlight content, type, add_keyword_links: false
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/code-highlight"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        "user-id" => @user_id,
        "api-key" => @api_key,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0"
      }

      # prepare parameters
      parameters = {
        "content" => content,
        "type" => type,
        "add-keyword-links" => if add_keyword_links.nil? then false else add_keyword_links end
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:parameters

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Detect bad words, swear words and profanity in a given text. See: https://www.neutrinoapi.com/api/bad-word-filter/
    # @param [String] content Required parameter: The text content to check. This can be either a URL to load content from or an actual content string
    # @param [String] censor_character Optional parameter: The character to use to censor out the bad words found
    # @return BadWordFilterResponse response from the API call
    def bad_word_filter content, censor_character: nil
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/bad-word-filter"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        "user-id" => @user_id,
        "api-key" => @api_key,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json"
      }

      # prepare parameters
      parameters = {
        "content" => content,
        "output-case" => "camel",
        "censor-character" => censor_character
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:parameters

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # A powerful unit and currency conversion tool. See: https://www.neutrinoapi.com/api/convert/
    # @param [String] from_type Required parameter: The type of the value to convert from
    # @param [String] from_value Required parameter: The value to convert from
    # @param [String] to_type Required parameter: The type to convert to
    # @return ConvertResponse response from the API call
    def convert from_type, from_value, to_type
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/convert"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        "user-id" => @user_id,
        "api-key" => @api_key,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json"
      }

      # prepare parameters
      parameters = {
        "from-type" => from_type,
        "from-value" => from_value,
        "output-case" => "camel",
        "to-type" => to_type
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:parameters

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Parse, validate and clean an email address. See: https://www.neutrinoapi.com/api/email-validate/
    # @param [String] email Required parameter: The email address
    # @param [Boolean] fix_typos Optional parameter: Automatically attempt to fix typos in the address
    # @return EmailValidateResponse response from the API call
    def email_validate email, fix_typos: false
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/email-validate"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        "user-id" => @user_id,
        "api-key" => @api_key,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json"
      }

      # prepare parameters
      parameters = {
        "email" => email,
        "output-case" => "camel",
        "fix-typos" => if fix_typos.nil? then false else fix_typos end
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:parameters

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Clean and sanitize untrusted HTML. See: https://www.neutrinoapi.com/api/html-clean/
    # @param [String] content Required parameter: The HTML content. This can be either a URL to load HTML from or an actual HTML content string
    # @param [String] output_type Required parameter: The level of sanitization, possible values are: plain-text, simple-text, basic-html, basic-html-with-images, advanced-html
    # @return Binary response from the API call
    def html_clean content, output_type
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/html-clean"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        "user-id" => @user_id,
        "api-key" => @api_key,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0"
      }

      # prepare parameters
      parameters = {
        "content" => content,
        "output-type" => output_type
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:parameters

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Extract HTML tag contents or attributes from complex HTML or XHTML content. See: https://www.neutrinoapi.com/api/html-extract-tags/
    # @param [String] content Required parameter: The HTML content. This can be either a URL to load HTML from or an actual HTML content string
    # @param [String] tag Required parameter: The HTML tag(s) to extract data from. This can just be a simple tag name like 'img' OR a CSS/jQuery style selector
    # @param [String] attribute Optional parameter: If set, then extract data from the specified tag attribute. If not set, then data will be extracted from the tags inner content
    # @param [String] base_url Optional parameter: The base URL to replace into realive links
    # @return HTMLExtractResponse response from the API call
    def html_extract content, tag, attribute: nil, base_url: nil
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/html-extract-tags"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        "user-id" => @user_id,
        "api-key" => @api_key,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json"
      }

      # prepare parameters
      parameters = {
        "content" => content,
        "output-case" => "camel",
        "tag" => tag,
        "attribute" => attribute,
        "base-url" => base_url
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:parameters

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

  end
end