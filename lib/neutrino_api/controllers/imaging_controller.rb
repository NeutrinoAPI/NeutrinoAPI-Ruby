# This file was automatically generated for NeutrinoAPI.com by APIMATIC BETA v2.0 on 12/10/2015

module NeutrinoApi
  class ImagingController

    # Initializer with authentication and configuration parameters
    def initialize(user_id, api_key)
        @user_id = user_id;
        @api_key = api_key;
    end

    # Generate a QR code as a PNG image. See: https://www.neutrinoapi.com/api/qr-code/
    # @param [String] content Required parameter: The content to encode into the QR code (e.g. a URL or a phone number)
    # @param [String] bg_color Optional parameter: The QR code background color (you should always use a light color for this)
    # @param [String] fg_color Optional parameter: The QR code foreground color (you should always use a dark color for this)
    # @param [Numeric] height Optional parameter: The height of the QR code (in px)
    # @param [Numeric] width Optional parameter: The width of the QR code (in px)
    # @return Binary response from the API call
    def create_qr_code content, bg_color: "#ffffff", fg_color: "#000000", height: 250, width: 250
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/qr-code"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        "width" => if width.nil? then 250 else width end,
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
        "bg-color" => if bg_color.nil? then "#ffffff" else bg_color end,
        "fg-color" => if fg_color.nil? then "#000000" else fg_color end,
        "height" => if height.nil? then 250 else height end
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:parameters

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Convert HTML content into PDF documents. See: https://www.neutrinoapi.com/api/html-to-pdf/
    # @param [String] content Required parameter: The HTML content. This can be either a URL to load HTML from or an actual HTML content string
    # @param [Numeric] html_width Optional parameter: The width (in px) to render the HTML document at
    # @param [Numeric] margin Optional parameter: The PDF document margin (in mm)
    # @param [String] title Optional parameter: The PDF document title
    # @return Binary response from the API call
    def create_html_to_pdf content, html_width: 1024, margin: 10, title: nil
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/html-to-pdf"

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
        "html-width" => if html_width.nil? then 1024 else html_width end,
        "margin" => if margin.nil? then 10 else margin end,
        "title" => title
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:parameters

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Resize an image and output as either JPEG or PNG. See: https://www.neutrinoapi.com/api/image-resize/
    # @param [Numeric] height Required parameter: Height to resize to (in px)
    # @param [String] image_url Required parameter: The URL to the source image
    # @param [Numeric] width Required parameter: Width to resize to (in px)
    # @param [String] format Optional parameter: The output image format, can be either png or jpg
    # @return Binary response from the API call
    def create_image_resize height, image_url, width, format: "png"
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/image-resize"

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
        "height" => height,
        "image-url" => image_url,
        "width" => width,
        "format" => if format.nil? then "png" else format end
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:parameters

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Watermark one image with another image. See: https://www.neutrinoapi.com/api/image-watermark/
    # @param [String] image_url Required parameter: The URL to the source image
    # @param [String] watermark_url Required parameter: The URL to the watermark image
    # @param [String] format Optional parameter: The output image format, can be either png or jpg
    # @param [Numeric] height Optional parameter: If set resize the resulting image to this height (preserving aspect ratio)
    # @param [Numeric] opacity Optional parameter: The opacity of the watermark (0 to 100)
    # @param [String] position Optional parameter: The position of the watermark image, possible values are: center, top-left, top-center, top-right, bottom-left, bottom-center, bottom-right
    # @param [Numeric] width Optional parameter: If set resize the resulting image to this width (preserving aspect ratio)
    # @return Binary response from the API call
    def create_image_watermark image_url, watermark_url, format: "png", height: nil, opacity: 50, position: "center", width: nil
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/image-watermark"

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
        "image-url" => image_url,
        "watermark-url" => watermark_url,
        "format" => if format.nil? then "png" else format end,
        "height" => height,
        "opacity" => if opacity.nil? then 50 else opacity end,
        "position" => if position.nil? then "center" else position end,
        "width" => width
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