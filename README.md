# Getting started

The general-purpose API

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build neutrino_api.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install neutrino_api-3.4.0.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=NeutrinoAPI-Ruby&workspaceName=NeutrinoAPI-Ruby&projectName=neutrino_api&gemName=neutrino_api&gemVer=3.4.0)

## How to Use

The following section explains how to use the NeutrinoAPI Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=NeutrinoAPI-Ruby&workspaceName=NeutrinoAPI&projectName=neutrino_api&gemName=neutrino_api&gemVer=3.4.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=NeutrinoAPI-Ruby&workspaceName=NeutrinoAPI&projectName=neutrino_api&gemName=neutrino_api&gemVer=3.4.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=NeutrinoAPI-Ruby&workspaceName=NeutrinoAPI&projectName=neutrino_api&gemName=neutrino_api&gemVer=3.4.0)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the NeutrinoAPI gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'neutrino_api', '~> 3.4.0' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=NeutrinoAPI-Ruby&workspaceName=NeutrinoAPI&projectName=neutrino_api&gemName=neutrino_api&gemVer=3.4.0)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=NeutrinoAPI-Ruby&workspaceName=NeutrinoAPI&projectName=neutrino_api&gemName=neutrino_api&gemVer=3.4.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=NeutrinoAPI-Ruby&workspaceName=NeutrinoAPI&projectName=neutrino_api&gemName=neutrino_api&gemVer=3.4.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=NeutrinoAPI-Ruby&workspaceName=NeutrinoAPI&projectName=neutrino_api&gemName=neutrino_api&gemVer=3.4.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=NeutrinoAPI-Ruby&workspaceName=NeutrinoAPI&projectName=neutrino_api&gemName=neutrino_api&gemVer=3.4.0)

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| user_id | Your user ID |
| api_key | Your API key |



API client can be initialized as following.

```ruby
# Configuration parameters and credentials
user_id = 'user_id' # Your user ID
api_key = 'api_key' # Your API key

client = NeutrinoApi::NeutrinoApiClient.new(
  user_id: user_id,
  api_key: api_key
)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=NeutrinoAPI-Ruby&workspaceName=NeutrinoAPI&projectName=neutrino_api&gemName=neutrino_api&gemVer=3.4.0&initLine=client%2520%253D%2520NeutrinoApiClient.new%2528%2527user_id%2527%252C%2520%2527api_key%2527%2529)



# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [Imaging](#imaging)
* [Telephony](#telephony)
* [DataTools](#data_tools)
* [SecurityAndNetworking](#security_and_networking)
* [Geolocation](#geolocation)
* [ECommerce](#e_commerce)
* [WWW](#www)

## <a name="imaging"></a>![Class: ](https://apidocs.io/img/class.png ".Imaging") Imaging

### Get singleton instance

The singleton instance of the ``` Imaging ``` class can be accessed from the API Client.

```ruby
imaging_controller = client.imaging
```

### <a name="image_resize"></a>![Method: ](https://apidocs.io/img/method.png ".Imaging.image_resize") image_resize

> Resize an image and output as either JPEG or PNG. See: https://www.neutrinoapi.com/api/image-resize/


```ruby
def image_resize(image_url,
                     width,
                     height,
                     format = 'png'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| image_url |  ``` Required ```  | The URL to the source image |
| width |  ``` Required ```  | The width to resize to (in px) while preserving aspect ratio |
| height |  ``` Required ```  | The height to resize to (in px) while preserving aspect ratio |
| format |  ``` Optional ```  ``` DefaultValue ```  | The output image format, can be either png or jpg |


#### Example Usage

```ruby
image_url = 'image-url'
width = 251
height = 251
format = 'png'

result = imaging_controller.image_resize(image_url, width, height, format)

```


### <a name="qr_code"></a>![Method: ](https://apidocs.io/img/method.png ".Imaging.qr_code") qr_code

> Generate a QR code as a PNG image. See: https://www.neutrinoapi.com/api/qr-code/


```ruby
def qr_code(content,
                width = 256,
                height = 256,
                fg_color = '#000000',
                bg_color = '#ffffff'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| content |  ``` Required ```  | The content to encode into the QR code (e.g. a URL or a phone number) |
| width |  ``` Optional ```  ``` DefaultValue ```  | The width of the QR code (in px) |
| height |  ``` Optional ```  ``` DefaultValue ```  | The height of the QR code (in px) |
| fg_color |  ``` Optional ```  ``` DefaultValue ```  | The QR code foreground color |
| bg_color |  ``` Optional ```  ``` DefaultValue ```  | The QR code background color |


#### Example Usage

```ruby
content = 'content'
width = 256
height = 256
fg_color = '#000000'
bg_color = '#ffffff'

result = imaging_controller.qr_code(content, width, height, fg_color, bg_color)

```


### <a name="image_watermark"></a>![Method: ](https://apidocs.io/img/method.png ".Imaging.image_watermark") image_watermark

> Watermark one image with another image. See: https://www.neutrinoapi.com/api/image-watermark/


```ruby
def image_watermark(image_url,
                        watermark_url,
                        opacity = 50,
                        format = 'png',
                        position = 'center',
                        width = nil,
                        height = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| image_url |  ``` Required ```  | The URL to the source image |
| watermark_url |  ``` Required ```  | The URL to the watermark image |
| opacity |  ``` Optional ```  ``` DefaultValue ```  | The opacity of the watermark (0 to 100) |
| format |  ``` Optional ```  ``` DefaultValue ```  | The output image format, can be either png or jpg |
| position |  ``` Optional ```  ``` DefaultValue ```  | The position of the watermark image, possible values are:<br/>center, top-left, top-center, top-right, bottom-left, bottom-center, bottom-right |
| width |  ``` Optional ```  | If set resize the resulting image to this width (in px) while preserving aspect ratio |
| height |  ``` Optional ```  | If set resize the resulting image to this height (in px) while preserving aspect ratio |


#### Example Usage

```ruby
image_url = 'image-url'
watermark_url = 'watermark-url'
opacity = 50
format = 'png'
position = 'center'
width = 251
height = 251

result = imaging_controller.image_watermark(image_url, watermark_url, opacity, format, position, width, height)

```


### <a name="html5_render"></a>![Method: ](https://apidocs.io/img/method.png ".Imaging.html5_render") html5_render

> Render HTML content to PDF, JPG or PNG. See: https://www.neutrinoapi.com/api/html5-render/


```ruby
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
                     zoom = 1.0,
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
                     page_height = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| content |  ``` Required ```  | The HTML content. This can be either a URL to load HTML from or an actual HTML content string |
| format |  ``` Optional ```  ``` DefaultValue ```  | Which format to output, available options are: PDF, PNG, JPG |
| page_size |  ``` Optional ```  ``` DefaultValue ```  | Set the document page size, can be one of: A0 - A9, B0 - B10, Comm10E, DLE or Letter |
| title |  ``` Optional ```  | The document title |
| margin |  ``` Optional ```  ``` DefaultValue ```  | The document margin (in mm) |
| margin_left |  ``` Optional ```  ``` DefaultValue ```  | The document left margin (in mm) |
| margin_right |  ``` Optional ```  ``` DefaultValue ```  | The document right margin (in mm) |
| margin_top |  ``` Optional ```  ``` DefaultValue ```  | The document top margin (in mm) |
| margin_bottom |  ``` Optional ```  ``` DefaultValue ```  | The document bottom margin (in mm) |
| landscape |  ``` Optional ```  ``` DefaultValue ```  | Set the document to lanscape orientation |
| zoom |  ``` Optional ```  ``` DefaultValue ```  | Set the zoom factor when rendering the page (2.0 for double size, 0.5 for half size) |
| grayscale |  ``` Optional ```  ``` DefaultValue ```  | Render the final document in grayscale |
| media_print |  ``` Optional ```  ``` DefaultValue ```  | Use @media print CSS styles to render the document |
| media_queries |  ``` Optional ```  ``` DefaultValue ```  | Activate all @media queries before rendering. This can be useful if you wan't to render the mobile version of a responsive website |
| forms |  ``` Optional ```  ``` DefaultValue ```  | Generate real (fillable) PDF forms from HTML forms |
| css |  ``` Optional ```  | Inject custom CSS into the HTML. e.g. 'body { background-color: red;}' |
| image_width |  ``` Optional ```  ``` DefaultValue ```  | If rendering to an image format (PNG or JPG) use this image width (in pixels) |
| image_height |  ``` Optional ```  | If rendering to an image format (PNG or JPG) use this image height (in pixels). The default is automatic which dynamically sets the image height based on the content |
| render_delay |  ``` Optional ```  ``` DefaultValue ```  | Number of milliseconds to wait before rendering the page (can be useful for pages with animations etc) |
| header_text_left |  ``` Optional ```  | Text to print to the left-hand side header of each page. e.g. 'My header - Page {page_number} of {total_pages}' |
| header_text_center |  ``` Optional ```  | Text to print to the center header of each page |
| header_text_right |  ``` Optional ```  | Text to print to the right-hand side header of each page |
| header_size |  ``` Optional ```  ``` DefaultValue ```  | The height of your header (in mm) |
| header_font |  ``` Optional ```  ``` DefaultValue ```  | Set the header font. Fonts available: Times, Courier, Helvetica, Arial |
| header_font_size |  ``` Optional ```  ``` DefaultValue ```  | Set the header font size (in pt) |
| header_line |  ``` Optional ```  ``` DefaultValue ```  | Draw a full page width horizontal line under your header |
| footer_text_left |  ``` Optional ```  | Text to print to the left-hand side footer of each page. e.g. 'My footer - Page {page_number} of {total_pages}' |
| footer_text_center |  ``` Optional ```  | Text to print to the center header of each page |
| footer_text_right |  ``` Optional ```  | Text to print to the right-hand side header of each page |
| footer_size |  ``` Optional ```  ``` DefaultValue ```  | The height of your footer (in mm) |
| footer_font |  ``` Optional ```  ``` DefaultValue ```  | Set the footer font. Fonts available: Times, Courier, Helvetica, Arial |
| footer_font_size |  ``` Optional ```  ``` DefaultValue ```  | Set the footer font size (in pt) |
| footer_line |  ``` Optional ```  ``` DefaultValue ```  | Draw a full page width horizontal line above your footer |
| page_width |  ``` Optional ```  | Set the PDF page width explicitly (in mm) |
| page_height |  ``` Optional ```  | Set the PDF page height explicitly (in mm) |


#### Example Usage

```ruby
content = 'content'
format = 'PDF'
page_size = 'A4'
title = 'title'
margin = 0
margin_left = 0
margin_right = 0
margin_top = 0
margin_bottom = 0
landscape = false
zoom = 1.0
grayscale = false
media_print = false
media_queries = false
forms = false
css = 'css'
image_width = 1024
image_height = 87
render_delay = 0
header_text_left = 'header-text-left'
header_text_center = 'header-text-center'
header_text_right = 'header-text-right'
header_size = 9
header_font = 'Courier'
header_font_size = 11
header_line = false
footer_text_left = 'footer-text-left'
footer_text_center = 'footer-text-center'
footer_text_right = 'footer-text-right'
footer_size = 9
footer_font = 'Courier'
footer_font_size = 11
footer_line = false
page_width = 87
page_height = 87

result = imaging_controller.html5_render(content, format, page_size, title, margin, margin_left, margin_right, margin_top, margin_bottom, landscape, zoom, grayscale, media_print, media_queries, forms, css, image_width, image_height, render_delay, header_text_left, header_text_center, header_text_right, header_size, header_font, header_font_size, header_line, footer_text_left, footer_text_center, footer_text_right, footer_size, footer_font, footer_font_size, footer_line, page_width, page_height)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="telephony"></a>![Class: ](https://apidocs.io/img/class.png ".Telephony") Telephony

### Get singleton instance

The singleton instance of the ``` Telephony ``` class can be accessed from the API Client.

```ruby
telephony_controller = client.telephony
```

### <a name="hlr_lookup"></a>![Method: ](https://apidocs.io/img/method.png ".Telephony.hlr_lookup") hlr_lookup

> Connect to the global mobile cellular network and retrieve the status of a mobile device. See: https://www.neutrinoapi.com/api/hlr-lookup/


```ruby
def hlr_lookup(number,
                   country_code = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| number |  ``` Required ```  | A phone number |
| country_code |  ``` Optional ```  | ISO 2-letter country code, assume numbers are based in this country.<br/>If not set numbers are assumed to be in international format (with or without the leading + sign) |


#### Example Usage

```ruby
number = 'number'
country_code = 'country-code'

result = telephony_controller.hlr_lookup(number, country_code)

```


### <a name="phone_playback"></a>![Method: ](https://apidocs.io/img/method.png ".Telephony.phone_playback") phone_playback

> Make an automated call to any valid phone number and playback an audio message. See: https://www.neutrinoapi.com/api/phone-playback/


```ruby
def phone_playback(number,
                       audio_url); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| number |  ``` Required ```  | The phone number to call. Must be in valid international format |
| audio_url |  ``` Required ```  | A URL to a valid audio file. Accepted audio formats are:<ul><li>MP3</li><li>WAV</li><li>OGG</ul></ul>You can use the following MP3 URL for testing:<br/>https://www.neutrinoapi.com/test-files/test1.mp3 |


#### Example Usage

```ruby
number = 'number'
audio_url = 'audio-url'

result = telephony_controller.phone_playback(number, audio_url)

```


### <a name="verify_security_code"></a>![Method: ](https://apidocs.io/img/method.png ".Telephony.verify_security_code") verify_security_code

> Check if a security code from one of the verify APIs is valid. See: https://www.neutrinoapi.com/api/verify-security-code/


```ruby
def verify_security_code(security_code); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| security_code |  ``` Required ```  | The security code to verify |


#### Example Usage

```ruby
security_code = 'security-code'

result = telephony_controller.verify_security_code(security_code)

```


### <a name="sms_verify"></a>![Method: ](https://apidocs.io/img/method.png ".Telephony.sms_verify") sms_verify

> Send a unique security code to any mobile device via SMS. See: https://www.neutrinoapi.com/api/sms-verify/


```ruby
def sms_verify(number,
                   code_length = 5,
                   security_code = nil,
                   country_code = nil,
                   language_code = 'en'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| number |  ``` Required ```  | The phone number to send a verification code to |
| code_length |  ``` Optional ```  ``` DefaultValue ```  | The number of digits to use in the security code (must be between 4 and 12) |
| security_code |  ``` Optional ```  | Pass in your own security code. This is useful if you have implemented TOTP or similar 2FA methods. If not set then we will generate a secure random code |
| country_code |  ``` Optional ```  | ISO 2-letter country code, assume numbers are based in this country.<br/>If not set numbers are assumed to be in international format (with or without the leading + sign) |
| language_code |  ``` Optional ```  ``` DefaultValue ```  | The language to send the verification code in, available languages are:<ul><li>de - German</li><li>en - English</li><li>es - Spanish</li><li>fr - French</li><li>it - Italian</li><li>pt - Portuguese</li><li>ru - Russian</li></ul> |


#### Example Usage

```ruby
number = 'number'
code_length = 5
security_code = 87
country_code = 'country-code'
language_code = 'en'

result = telephony_controller.sms_verify(number, code_length, security_code, country_code, language_code)

```


### <a name="sms_message"></a>![Method: ](https://apidocs.io/img/method.png ".Telephony.sms_message") sms_message

> Send a free-form message to any mobile device via SMS. See: https://www.neutrinoapi.com/api/sms-message/


```ruby
def sms_message(number,
                    message,
                    country_code = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| number |  ``` Required ```  | The phone number to send a message to |
| message |  ``` Required ```  | The SMS message to send. Messages are truncated to a maximum of 150 characters for ASCII content OR 70 characters for UTF content |
| country_code |  ``` Optional ```  | ISO 2-letter country code, assume numbers are based in this country.<br/>If not set numbers are assumed to be in international format (with or without the leading + sign) |


#### Example Usage

```ruby
number = 'number'
message = 'message'
country_code = 'country-code'

result = telephony_controller.sms_message(number, message, country_code)

```


### <a name="phone_verify"></a>![Method: ](https://apidocs.io/img/method.png ".Telephony.phone_verify") phone_verify

> Make an automated call to any valid phone number and playback a unique security code. See: https://www.neutrinoapi.com/api/phone-verify/


```ruby
def phone_verify(number,
                     code_length = 6,
                     security_code = nil,
                     playback_delay = 800,
                     country_code = nil,
                     language_code = 'en'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| number |  ``` Required ```  | The phone number to send the verification code to |
| code_length |  ``` Optional ```  ``` DefaultValue ```  | The number of digits to use in the security code (between 4 and 12) |
| security_code |  ``` Optional ```  | Pass in your own security code. This is useful if you have implemented TOTP or similar 2FA methods. If not set then we will generate a secure random code |
| playback_delay |  ``` Optional ```  ``` DefaultValue ```  | The delay in milliseconds between the playback of each security code |
| country_code |  ``` Optional ```  | ISO 2-letter country code, assume numbers are based in this country.<br/>If not set numbers are assumed to be in international format (with or without the leading + sign) |
| language_code |  ``` Optional ```  ``` DefaultValue ```  | The language to playback the verification code in, available languages are:<ul><li>de - German</li><li>en - English</li><li>es - Spanish</li><li>fr - French</li><li>it - Italian</li><li>pt - Portuguese</li><li>ru - Russian</li></ul> |


#### Example Usage

```ruby
number = 'number'
code_length = 6
security_code = 87
playback_delay = 800
country_code = 'country-code'
language_code = 'en'

result = telephony_controller.phone_verify(number, code_length, security_code, playback_delay, country_code, language_code)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="data_tools"></a>![Class: ](https://apidocs.io/img/class.png ".DataTools") DataTools

### Get singleton instance

The singleton instance of the ``` DataTools ``` class can be accessed from the API Client.

```ruby
dataTools_controller = client.data_tools
```

### <a name="email_validate"></a>![Method: ](https://apidocs.io/img/method.png ".DataTools.email_validate") email_validate

> Parse, validate and clean an email address. See: https://www.neutrinoapi.com/api/email-validate/


```ruby
def email_validate(email,
                       fix_typos = false); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | An email address |
| fix_typos |  ``` Optional ```  ``` DefaultValue ```  | Automatically attempt to fix typos in the address |


#### Example Usage

```ruby
email = 'email'
fix_typos = false

result = dataTools_controller.email_validate(email, fix_typos)

```


### <a name="bad_word_filter"></a>![Method: ](https://apidocs.io/img/method.png ".DataTools.bad_word_filter") bad_word_filter

> Detect bad words, swear words and profanity in a given text. See: https://www.neutrinoapi.com/api/bad-word-filter/


```ruby
def bad_word_filter(content,
                        censor_character = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| content |  ``` Required ```  | The content to scan. This can be either a URL to load content from or an actual content string |
| censor_character |  ``` Optional ```  | The character to use to censor out the bad words found |


#### Example Usage

```ruby
content = 'content'
censor_character = 'censor-character'

result = dataTools_controller.bad_word_filter(content, censor_character)

```


### <a name="convert"></a>![Method: ](https://apidocs.io/img/method.png ".DataTools.convert") convert

> A powerful unit conversion tool. See: https://www.neutrinoapi.com/api/convert/


```ruby
def convert(from_value,
                from_type,
                to_type); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from_value |  ``` Required ```  | The value to convert from (e.g. 10.95) |
| from_type |  ``` Required ```  | The type of the value to convert from (e.g. USD) |
| to_type |  ``` Required ```  | The type to convert to (e.g. EUR) |


#### Example Usage

```ruby
from_value = 'from-value'
from_type = 'from-type'
to_type = 'to-type'

result = dataTools_controller.convert(from_value, from_type, to_type)

```


### <a name="phone_validate"></a>![Method: ](https://apidocs.io/img/method.png ".DataTools.phone_validate") phone_validate

> Parse, validate and get location information about a phone number. See: https://www.neutrinoapi.com/api/phone-validate/


```ruby
def phone_validate(number,
                       country_code = nil,
                       ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| number |  ``` Required ```  | A phone number. This can be in international format (E.164) or local format. If passing local format you should use the 'country-code' or 'ip' options as well |
| country_code |  ``` Optional ```  | ISO 2-letter country code, assume numbers are based in this country.<br/>If not set numbers are assumed to be in international format (with or without the leading + sign) |
| ip |  ``` Optional ```  | Pass in a users IP address and we will assume numbers are based in the country of the IP address |


#### Example Usage

```ruby
number = 'number'
country_code = 'country-code'
ip = 'ip'

result = dataTools_controller.phone_validate(number, country_code, ip)

```


### <a name="user_agent_info"></a>![Method: ](https://apidocs.io/img/method.png ".DataTools.user_agent_info") user_agent_info

> Parse, validate and get detailed user-agent information from a user agent string. See: https://www.neutrinoapi.com/api/user-agent-info/


```ruby
def user_agent_info(user_agent); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| user_agent |  ``` Required ```  | A user agent string |


#### Example Usage

```ruby
user_agent = 'user-agent'

result = dataTools_controller.user_agent_info(user_agent)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="security_and_networking"></a>![Class: ](https://apidocs.io/img/class.png ".SecurityAndNetworking") SecurityAndNetworking

### Get singleton instance

The singleton instance of the ``` SecurityAndNetworking ``` class can be accessed from the API Client.

```ruby
securityAndNetworking_controller = client.security_and_networking
```

### <a name="host_reputation"></a>![Method: ](https://apidocs.io/img/method.png ".SecurityAndNetworking.host_reputation") host_reputation

> Check the reputation of an IP address, domain name, FQDN or URL against a comprehensive list of blacklists and blocklists. See: https://www.neutrinoapi.com/api/host-reputation/


```ruby
def host_reputation(host,
                        list_rating = 3); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| host |  ``` Required ```  | An IP address, domain name, FQDN or URL.<br/>If you supply a domain/URL it will be checked against the URI DNSBL lists |
| list_rating |  ``` Optional ```  ``` DefaultValue ```  | Only check lists with this rating or better |


#### Example Usage

```ruby
host = 'host'
list_rating = 3

result = securityAndNetworking_controller.host_reputation(host, list_rating)

```


### <a name="ip_probe"></a>![Method: ](https://apidocs.io/img/method.png ".SecurityAndNetworking.ip_probe") ip_probe

> Analyze and extract provider information for an IP address. See: https://www.neutrinoapi.com/api/ip-probe/


```ruby
def ip_probe(ip); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| ip |  ``` Required ```  | IPv4 or IPv6 address |


#### Example Usage

```ruby
ip = 'ip'

result = securityAndNetworking_controller.ip_probe(ip)

```


### <a name="ip_blocklist"></a>![Method: ](https://apidocs.io/img/method.png ".SecurityAndNetworking.ip_blocklist") ip_blocklist

> The IP Blocklist API will detect potentially malicious or dangerous IP addresses. See: https://www.neutrinoapi.com/api/ip-blocklist/


```ruby
def ip_blocklist(ip); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| ip |  ``` Required ```  | An IPv4 or IPv6 address |


#### Example Usage

```ruby
ip = 'ip'

result = securityAndNetworking_controller.ip_blocklist(ip)

```


### <a name="email_verify"></a>![Method: ](https://apidocs.io/img/method.png ".SecurityAndNetworking.email_verify") email_verify

> SMTP based email address verification. See: https://www.neutrinoapi.com/api/email-verify/


```ruby
def email_verify(email,
                     fix_typos = false); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | An email address |
| fix_typos |  ``` Optional ```  ``` DefaultValue ```  | Automatically attempt to fix typos in the address |


#### Example Usage

```ruby
email = 'email'
fix_typos = false

result = securityAndNetworking_controller.email_verify(email, fix_typos)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="geolocation"></a>![Class: ](https://apidocs.io/img/class.png ".Geolocation") Geolocation

### Get singleton instance

The singleton instance of the ``` Geolocation ``` class can be accessed from the API Client.

```ruby
geolocation_controller = client.geolocation
```

### <a name="geocode_reverse"></a>![Method: ](https://apidocs.io/img/method.png ".Geolocation.geocode_reverse") geocode_reverse

> Convert a geographic coordinate (latitude and longitude) into a real world address or location. See: https://www.neutrinoapi.com/api/geocode-reverse/


```ruby
def geocode_reverse(latitude,
                        longitude,
                        language_code = 'en'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| latitude |  ``` Required ```  | The location latitude in decimal degrees format |
| longitude |  ``` Required ```  | The location longitude in decimal degrees format |
| language_code |  ``` Optional ```  ``` DefaultValue ```  | The language to display results in, available languages are:<ul><li>de, en, es, fr, it, pt, ru</li></ul> |


#### Example Usage

```ruby
latitude = 'latitude'
longitude = 'longitude'
language_code = 'en'

result = geolocation_controller.geocode_reverse(latitude, longitude, language_code)

```


### <a name="ip_info"></a>![Method: ](https://apidocs.io/img/method.png ".Geolocation.ip_info") ip_info

> Get location information about an IP address and do reverse DNS (PTR) lookups. See: https://www.neutrinoapi.com/api/ip-info/


```ruby
def ip_info(ip,
                reverse_lookup = false); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| ip |  ``` Required ```  | IPv4 or IPv6 address |
| reverse_lookup |  ``` Optional ```  ``` DefaultValue ```  | Do a reverse DNS (PTR) lookup. This option can add extra delay to the request so only use it if you need it |


#### Example Usage

```ruby
ip = 'ip'
reverse_lookup = false

result = geolocation_controller.ip_info(ip, reverse_lookup)

```


### <a name="geocode_address"></a>![Method: ](https://apidocs.io/img/method.png ".Geolocation.geocode_address") geocode_address

> Geocode an address, partial address or just the name of a place. See: https://www.neutrinoapi.com/api/geocode-address/


```ruby
def geocode_address(address,
                        country_code = nil,
                        language_code = 'en',
                        fuzzy_search = false); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| address |  ``` Required ```  | The address, partial address or name of a place to try and locate |
| country_code |  ``` Optional ```  | The ISO 2-letter country code to be biased towards (the default is no country bias) |
| language_code |  ``` Optional ```  ``` DefaultValue ```  | The language to display results in, available languages are:<ul><li>de, en, es, fr, it, pt, ru</li></ul> |
| fuzzy_search |  ``` Optional ```  ``` DefaultValue ```  | If no matches are found for the given address, start performing a recursive fuzzy search until a geolocation is found. We use a combination of approximate string matching and data cleansing to find possible location matches |


#### Example Usage

```ruby
address = 'address'
country_code = 'country-code'
language_code = 'en'
fuzzy_search = false

result = geolocation_controller.geocode_address(address, country_code, language_code, fuzzy_search)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="e_commerce"></a>![Class: ](https://apidocs.io/img/class.png ".ECommerce") ECommerce

### Get singleton instance

The singleton instance of the ``` ECommerce ``` class can be accessed from the API Client.

```ruby
eCommerce_controller = client.e_commerce
```

### <a name="bin_lookup"></a>![Method: ](https://apidocs.io/img/method.png ".ECommerce.bin_lookup") bin_lookup

> Perform a BIN (Bank Identification Number) or IIN (Issuer Identification Number) lookup. See: https://www.neutrinoapi.com/api/bin-lookup/


```ruby
def bin_lookup(bin_number,
                   customer_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| bin_number |  ``` Required ```  | The BIN or IIN number (the first 6 digits of a credit card number) |
| customer_ip |  ``` Optional ```  | Pass in the customers IP address and we will return some extra information about them |


#### Example Usage

```ruby
bin_number = 'bin-number'
customer_ip = 'customer-ip'

result = eCommerce_controller.bin_lookup(bin_number, customer_ip)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="www"></a>![Class: ](https://apidocs.io/img/class.png ".WWW") WWW

### Get singleton instance

The singleton instance of the ``` WWW ``` class can be accessed from the API Client.

```ruby
wWW_controller = client.www
```

### <a name="url_info"></a>![Method: ](https://apidocs.io/img/method.png ".WWW.url_info") url_info

> Parse, analyze and retrieve content from the supplied URL. See: https://www.neutrinoapi.com/api/url-info/


```ruby
def url_info(url,
                 fetch_content = false); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| url |  ``` Required ```  | The URL to probe |
| fetch_content |  ``` Optional ```  ``` DefaultValue ```  | If this URL responds with html, text, json or xml then return the response. This option is useful if you want to perform further processing on the URL content (e.g. with the HTML Extract or HTML Clean APIs) |


#### Example Usage

```ruby
url = 'url'
fetch_content = false

result = wWW_controller.url_info(url, fetch_content)

```


### <a name="browser_bot"></a>![Method: ](https://apidocs.io/img/method.png ".WWW.browser_bot") browser_bot

> Browser bot can extract content, interact with keyboard and mouse events, and execute JavaScript on a website. See: https://www.neutrinoapi.com/api/browser-bot/


```ruby
def browser_bot(url,
                    timeout = 30,
                    delay = 2,
                    selector = nil,
                    exec = ,
                    user_agent = nil,
                    ignore_certificate_errors = false); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| url |  ``` Required ```  | The URL to load |
| timeout |  ``` Optional ```  ``` DefaultValue ```  | Timeout in seconds. Give up if still trying to load the page after this number of seconds |
| delay |  ``` Optional ```  ``` DefaultValue ```  | Delay in seconds to wait before executing any selectors or JavaScript |
| selector |  ``` Optional ```  | Extract content from the page DOM using this selector. Commonly known as a CSS selector, you can find a good reference <a href="https://www.w3schools.com/cssref/css_selectors.asp" target="_blank">here</a> |
| exec |  ``` Optional ```  ``` Collection ```  ``` DefaultValue ```  | Execute JavaScript on the page. Each array element should contain a valid JavaScript statement in string form. If a statement returns any kind of value it will be returned in the 'exec-results' response.<br/><br/>For your convenience you can also use the following special shortcut functions:<br/><div style='padding-left:32px; font-family:inherit; font-size:inherit;'>sleep(seconds); Just wait/sleep for the specified number of seconds.<br/>click('selector'); Click on the first element matching the given selector.<br/>focus('selector'); Focus on the first element matching the given selector.<br/>keys('characters'); Send the specified keyboard characters. Use click() or focus() first to send keys to a specific element.<br/>enter(); Send the Enter key.<br/>tab(); Send the Tab key.<br/></div><br/>Example:<br/><div style='padding-left:32px; font-family:inherit; font-size:inherit;'>[ "click('#button-id')", "sleep(1)", "click('.field-class')", "keys('1234')", "enter()" ]</div> |
| user_agent |  ``` Optional ```  | Override the browsers default user-agent string with this one |
| ignore_certificate_errors |  ``` Optional ```  ``` DefaultValue ```  | Ignore any TLS/SSL certificate errors and load the page anyway |


#### Example Usage

```ruby
url = 'url'
timeout = 30
delay = 2
selector = 'selector'
exec_value = "[]";
exec = JSON.parse(exec_value);
user_agent = 'user-agent'
ignore_certificate_errors = false

result = wWW_controller.browser_bot(url, timeout, delay, selector, exec, user_agent, ignore_certificate_errors)

```


### <a name="html_clean"></a>![Method: ](https://apidocs.io/img/method.png ".WWW.html_clean") html_clean

> Clean and sanitize untrusted HTML. See: https://www.neutrinoapi.com/api/html-clean/


```ruby
def html_clean(content,
                   output_type); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| content |  ``` Required ```  | The HTML content. This can be either a URL to load HTML from or an actual HTML content string |
| output_type |  ``` Required ```  | The level of sanitization, possible values are:<br/><b>plain-text</b>: reduce the content to plain text only (no HTML tags at all)<br/><br/><b>simple-text</b>: allow only very basic text formatting tags like b, em, i, strong, u<br/><br/><b>basic-html</b>: allow advanced text formatting and hyper links<br/><br/><b>basic-html-with-images</b>: same as basic html but also allows image tags<br/><br/><b>advanced-html</b>: same as basic html with images but also allows many more common HTML tags like table, ul, dl, pre<br/> |


#### Example Usage

```ruby
content = 'content'
output_type = 'output-type'

result = wWW_controller.html_clean(content, output_type)

```


[Back to List of Controllers](#list_of_controllers)



