# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # Imaging
  class Imaging < BaseController
    @instance = Imaging.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Resize an image and output as either JPEG or PNG. See:
    # https://www.neutrinoapi.com/api/image-resize/
    # @param [String] image_url Required parameter: The URL to the source
    # image
    # @param [Integer] width Required parameter: The width to resize to (in px)
    # while preserving aspect ratio
    # @param [Integer] height Required parameter: The height to resize to (in
    # px) while preserving aspect ratio
    # @param [String] format Optional parameter: The output image format, can be
    # either png or jpg
    # @return Binary response from the API call
    def image_resize(image_url,
                     width,
                     height,
                     format = 'png')
      # Prepare query url.
      _path_url = '/image-resize'
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'image-url' => image_url,
        'width' => width,
        'height' => height,
        'format' => format
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

    # Generate a QR code as a PNG image. See:
    # https://www.neutrinoapi.com/api/qr-code/
    # @param [String] content Required parameter: The content to encode into the
    # QR code (e.g. a URL or a phone number)
    # @param [Integer] width Optional parameter: The width of the QR code (in
    # px)
    # @param [Integer] height Optional parameter: The height of the QR code (in
    # px)
    # @param [String] fg_color Optional parameter: The QR code foreground
    # color
    # @param [String] bg_color Optional parameter: The QR code background
    # color
    # @return Binary response from the API call
    def qr_code(content,
                width = 256,
                height = 256,
                fg_color = '#000000',
                bg_color = '#ffffff')
      # Prepare query url.
      _path_url = '/qr-code'
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'content' => content,
        'width' => width,
        'height' => height,
        'fg-color' => fg_color,
        'bg-color' => bg_color
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

    # Watermark one image with another image. See:
    # https://www.neutrinoapi.com/api/image-watermark/
    # @param [String] image_url Required parameter: The URL to the source
    # image
    # @param [String] watermark_url Required parameter: The URL to the watermark
    # image
    # @param [Integer] opacity Optional parameter: The opacity of the watermark
    # (0 to 100)
    # @param [String] format Optional parameter: The output image format, can be
    # either png or jpg
    # @param [String] position Optional parameter: The position of the watermark
    # image, possible values are: center, top-left, top-center, top-right,
    # bottom-left, bottom-center, bottom-right
    # @param [Integer] width Optional parameter: If set resize the resulting
    # image to this width (in px) while preserving aspect ratio
    # @param [Integer] height Optional parameter: If set resize the resulting
    # image to this height (in px) while preserving aspect ratio
    # @return Binary response from the API call
    def image_watermark(image_url,
                        watermark_url,
                        opacity = 50,
                        format = 'png',
                        position = 'center',
                        width = nil,
                        height = nil)
      # Prepare query url.
      _path_url = '/image-watermark'
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'image-url' => image_url,
        'watermark-url' => watermark_url,
        'opacity' => opacity,
        'format' => format,
        'position' => position,
        'width' => width,
        'height' => height
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

    # Render HTML content to PDF, JPG or PNG. See:
    # https://www.neutrinoapi.com/api/html5-render/
    # @param [String] content Required parameter: The HTML content. This can be
    # either a URL to load HTML from or an actual HTML content string
    # @param [String] format Optional parameter: Which format to output,
    # available options are: PDF, PNG, JPG
    # @param [String] page_size Optional parameter: Set the document page size,
    # can be one of: A0 - A9, B0 - B10, Comm10E, DLE or Letter
    # @param [String] title Optional parameter: The document title
    # @param [Integer] margin Optional parameter: The document margin (in mm)
    # @param [Integer] margin_left Optional parameter: The document left margin
    # (in mm)
    # @param [Integer] margin_right Optional parameter: The document right
    # margin (in mm)
    # @param [Integer] margin_top Optional parameter: The document top margin
    # (in mm)
    # @param [Integer] margin_bottom Optional parameter: The document bottom
    # margin (in mm)
    # @param [Boolean] landscape Optional parameter: Set the document to
    # lanscape orientation
    # @param [Integer] zoom Optional parameter: Set the zoom factor when
    # rendering the page (2.0 for double size, 0.5 for half size)
    # @param [Boolean] grayscale Optional parameter: Render the final document
    # in grayscale
    # @param [Boolean] media_print Optional parameter: Use @media print CSS
    # styles to render the document
    # @param [Boolean] media_queries Optional parameter: Activate all @media
    # queries before rendering. This can be useful if you wan't to render the
    # mobile version of a responsive website
    # @param [Boolean] forms Optional parameter: Generate real (fillable) PDF
    # forms from HTML forms
    # @param [String] css Optional parameter: Inject custom CSS into the HTML.
    # e.g. 'body { background-color: red;}'
    # @param [Integer] image_width Optional parameter: If rendering to an image
    # format (PNG or JPG) use this image width (in pixels)
    # @param [Integer] image_height Optional parameter: If rendering to an image
    # format (PNG or JPG) use this image height (in pixels). The default is
    # automatic which dynamically sets the image height based on the content
    # @param [Integer] render_delay Optional parameter: Number of milliseconds
    # to wait before rendering the page (can be useful for pages with animations
    # etc)
    # @param [String] header_text_left Optional parameter: Text to print to the
    # left-hand side header of each page. e.g. 'My header - Page {page_number}
    # of {total_pages}'
    # @param [String] header_text_center Optional parameter: Text to print to
    # the center header of each page
    # @param [String] header_text_right Optional parameter: Text to print to the
    # right-hand side header of each page
    # @param [Integer] header_size Optional parameter: The height of your header
    # (in mm)
    # @param [String] header_font Optional parameter: Set the header font. Fonts
    # available: Times, Courier, Helvetica, Arial
    # @param [Integer] header_font_size Optional parameter: Set the header font
    # size (in pt)
    # @param [Boolean] header_line Optional parameter: Draw a full page width
    # horizontal line under your header
    # @param [String] footer_text_left Optional parameter: Text to print to the
    # left-hand side footer of each page. e.g. 'My footer - Page {page_number}
    # of {total_pages}'
    # @param [String] footer_text_center Optional parameter: Text to print to
    # the center header of each page
    # @param [String] footer_text_right Optional parameter: Text to print to the
    # right-hand side header of each page
    # @param [Integer] footer_size Optional parameter: The height of your footer
    # (in mm)
    # @param [String] footer_font Optional parameter: Set the footer font. Fonts
    # available: Times, Courier, Helvetica, Arial
    # @param [Integer] footer_font_size Optional parameter: Set the footer font
    # size (in pt)
    # @param [Boolean] footer_line Optional parameter: Draw a full page width
    # horizontal line above your footer
    # @param [Integer] page_width Optional parameter: Set the PDF page width
    # explicitly (in mm)
    # @param [Integer] page_height Optional parameter: Set the PDF page height
    # explicitly (in mm)
    # @return Binary response from the API call
    def html5_render(content,
                     format = 'PDF',
                     page_size = 'A4',
                     title = nil,
                     margin = 0,
                     margin_left = 0,
                     margin_right = 0,
                     margin_top = 0,
                     margin_bottom = 0,
                     landscape = false,
                     zoom = 1,
                     grayscale = false,
                     media_print = false,
                     media_queries = false,
                     forms = false,
                     css = nil,
                     image_width = 1024,
                     image_height = nil,
                     render_delay = 0,
                     header_text_left = nil,
                     header_text_center = nil,
                     header_text_right = nil,
                     header_size = 9,
                     header_font = 'Courier',
                     header_font_size = 11,
                     header_line = false,
                     footer_text_left = nil,
                     footer_text_center = nil,
                     footer_text_right = nil,
                     footer_size = 9,
                     footer_font = 'Courier',
                     footer_font_size = 11,
                     footer_line = false,
                     page_width = nil,
                     page_height = nil)
      # Prepare query url.
      _path_url = '/html5-render'
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'output-case' => 'camel',
        'content' => content,
        'format' => format,
        'page-size' => page_size,
        'title' => title,
        'margin' => margin,
        'margin-left' => margin_left,
        'margin-right' => margin_right,
        'margin-top' => margin_top,
        'margin-bottom' => margin_bottom,
        'landscape' => landscape,
        'zoom' => zoom,
        'grayscale' => grayscale,
        'media-print' => media_print,
        'media-queries' => media_queries,
        'forms' => forms,
        'css' => css,
        'image-width' => image_width,
        'image-height' => image_height,
        'render-delay' => render_delay,
        'header-text-left' => header_text_left,
        'header-text-center' => header_text_center,
        'header-text-right' => header_text_right,
        'header-size' => header_size,
        'header-font' => header_font,
        'header-font-size' => header_font_size,
        'header-line' => header_line,
        'footer-text-left' => footer_text_left,
        'footer-text-center' => footer_text_center,
        'footer-text-right' => footer_text_right,
        'footer-size' => footer_size,
        'footer-font' => footer_font,
        'footer-font-size' => footer_font_size,
        'footer-line' => footer_line,
        'page-width' => page_width,
        'page-height' => page_height
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
  end
end
