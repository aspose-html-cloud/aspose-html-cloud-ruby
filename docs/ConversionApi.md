# Conversion API

All URIs are relative to *https://api.aspose.cloud/v3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_convert_document_to_image**](ConversionApi.md#get_convert_document_to_image) | **GET** /html/{name}/convert/image/{outFormat} | Convert the HTML document from the storage by its name to the specified image format.
[**get_convert_document_to_image_by_url**](ConversionApi.md#get_convert_document_to_image_by_url) | **GET** /html/convert/image/{outFormat} | Convert the HTML page from the web by its URL to the specified image format.
[**get_convert_document_to_pdf**](ConversionApi.md#get_convert_document_to_pdf) | **GET** /html/{name}/convert/pdf | Convert the HTML document from the storage by its name to PDF.
[**get_convert_document_to_pdf_by_url**](ConversionApi.md#get_convert_document_to_pdf_by_url) | **GET** /html/convert/pdf | Convert the HTML page from the web by its URL to PDF.
[**get_convert_document_to_xps**](ConversionApi.md#get_convert_document_to_xps) | **GET** /html/{name}/convert/xps | Convert the HTML document from the storage by its name to XPS.
[**get_convert_document_to_xps_by_url**](ConversionApi.md#get_convert_document_to_xps_by_url) | **GET** /html/convert/xps | Convert the HTML page from the web by its URL to XPS.
[**post_convert_document_in_request_to_image**](ConversionApi.md#post_convert_document_in_request_to_image) | **POST** /html/convert/image/{outFormat} | Converts the HTML document (in request content) to the specified image format and uploads resulting file to storage.
[**post_convert_document_in_request_to_pdf**](ConversionApi.md#post_convert_document_in_request_to_pdf) | **POST** /html/convert/pdf | Converts the HTML document (in request content) to PDF and uploads resulting file to storage.
[**post_convert_document_in_request_to_xps**](ConversionApi.md#post_convert_document_in_request_to_xps) | **POST** /html/convert/xps | Converts the HTML document (in request content) to XPS and uploads resulting file to storage.
[**put_convert_document_to_image**](ConversionApi.md#put_convert_document_to_image) | **PUT** /html/{name}/convert/image/{outFormat} | Converts the HTML document (located on storage) to the specified image format and uploads resulting file to storage.
[**put_convert_document_to_pdf**](ConversionApi.md#put_convert_document_to_pdf) | **PUT** /html/{name}/convert/pdf | Converts the HTML document (located on storage) to PDF and uploads resulting file to storage.
[**put_convert_document_to_xps**](ConversionApi.md#put_convert_document_to_xps) | **PUT** /html/{name}/convert/xps | Converts the HTML document (located on storage) to XPS and uploads resulting file to storage.
[**get_convert_document_to_mhtml_by_url**](ConversionApi.md#get_convert_document_to_mhtml_by_url) | **GET** /html/convert/mhtml | Converts the HTML page from Web by its URL to MHTML returns resulting file in response content.
[**get_convert_document_to_markdown**](ConversionApi.md#get_convert_document_to_markdown) | **GET** /html/{name}/convert/md | Converts the HTML document (located on storage) to Markdown and returns resulting file in response content.
[**post_convert_document_in_request_to_markdown**](ConversionApi.md#post_convert_document_in_request_to_markdown) | **POST** /html/convert/md | Converts the HTML document (in request content) to Markdown and uploads resulting file to storage by specified path.
[**put_convert_document_to_markdown**](ConversionApi.md#put_convert_document_to_markdown) | **PUT** /html/{name}/convert/md | Converts the HTML document (located on storage) to Markdown and uploads resulting file to storage by specified path.

# **get_convert_document_to_image**
> Hash  get_convert_document_to_image(name, out_format, opts)

Convert the HTML document from the storage by its name to the specified image format.

### Example
```ruby
# load the gem
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing

CONFIG = {
    "basePath":"https://api.aspose.cloud/v3.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

name = "test.html" # String | Document name.

out_format = "bmp" # String | Resulting image format.

opts = { 
  width: 800, # Integer | Resulting image width. 
  height: 1000, # Integer | Resulting image height. 
  left_margin: 10, # Integer | Left resulting image margin.
  right_margin: 10, # Integer | Right resulting image margin.
  top_margin: 10, # Integer | Top resulting image margin.
  bottom_margin: 10, # Integer | Bottom resulting image margin.
  resolution: 300, # Integer | Resolution of resulting image.
  folder: "folder_example", # String | The source document folder.
  storage: "storage_example" # String | The source document storage.
}

begin
  #Convert the HTML document from the storage by its name to the specified image format.
  result = api_instance.get_convert_document_to_image(name, out_format, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_convert_document_to_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | html, epub, svg formats
 **out_format** | **String**| Resulting image format. | jpeg, png, bmp, tiff, gif
 **width** | **Integer**| Resulting image width.  | [optional] 
 **height** | **Integer**| Resulting image height.  | [optional] 
 **left_margin** | **Integer**| Left resulting image margin. | [optional] 
 **right_margin** | **Integer**| Right resulting image margin. | [optional] 
 **top_margin** | **Integer**| Top resulting image margin. | [optional] 
 **bottom_margin** | **Integer**| Bottom resulting image margin. | [optional] 
 **resolution** | **Integer**| Resolution of resulting image. | [optional] 
 **folder** | **String**| The source document folder. | [optional] 
 **storage** | **String**| The source document storage. | [optional] 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data


# **get_convert_document_to_image_by_url**
> Hash get_convert_document_to_image_by_url(source_url, out_format, opts)

Convert the HTML page from the web by its URL to the specified image format.

### Example
```ruby
# load the gem
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing


CONFIG = {
    "basePath":"https://api.aspose.cloud/v3.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

source_url = "http://www.google.com" # String | Source page URL.

out_format = "tiff" # String | Resulting image format.

opts = { 
  width: 700, # Integer | Resulting image width. 
  height: 1000, # Integer | Resulting image height. 
  left_margin: 40, # Integer | Left resulting image margin.
  right_margin: 40, # Integer | Right resulting image margin.
  top_margin: 50, # Integer | Top resulting image margin.
  bottom_margin: 50, # Integer | Bottom resulting image margin.
  resolution: 150, # Integer | Resolution of resulting image.
  folder: "remote_folder", # String | The document folder.
  storage: "remote_storage" # String | The document storage.
}

begin
  #Convert the HTML page from the web by its URL to the specified image format.
  result = api_instance.get_convert_document_to_image_by_url(source_url, out_format, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_convert_document_to_image_by_url: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_url** | **String**| Source page URL. | 
 **out_format** | **String**| Resulting image format. | jpeg, png, bmp, tiff, gif
 **width** | **Integer**| Resulting image width.  | [optional] 
 **height** | **Integer**| Resulting image height.  | [optional] 
 **left_margin** | **Integer**| Left resulting image margin. | [optional] 
 **right_margin** | **Integer**| Right resulting image margin. | [optional] 
 **top_margin** | **Integer**| Top resulting image margin. | [optional] 
 **bottom_margin** | **Integer**| Bottom resulting image margin. | [optional] 
 **resolution** | **Integer**| Resolution of resulting image. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data


# **get_convert_document_to_pdf**
> Hash get_convert_document_to_pdf(name, opts)

Convert the HTML document from the storage by its name to PDF.

### Example
```ruby
# load the gem
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing


CONFIG = {
    "basePath":"https://api.aspose.cloud/v3.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

name = "test.html" # String | Document name.

opts = { 
  width: 800, # Integer | Resulting image width. 
  height: 1000, # Integer | Resulting image height. 
  left_margin: 20, # Integer | Left resulting image margin.
  right_margin: 20, # Integer | Right resulting image margin.
  top_margin: 40, # Integer | Top resulting image margin.
  bottom_margin: 50, # Integer | Bottom resulting image margin.
  folder: "remote_folder", # String | The document folder.
  storage: "remote_storage" # String | The document storage.
}

begin
  #Convert the HTML document from the storage by its name to PDF.
  result = api_instance.get_convert_document_to_pdf(name, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_convert_document_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | html, epub, svg formats
 **width** | **Integer**| Resulting image width.  | [optional] 
 **height** | **Integer**| Resulting image height.  | [optional] 
 **left_margin** | **Integer**| Left resulting image margin. | [optional] 
 **right_margin** | **Integer**| Right resulting image margin. | [optional] 
 **top_margin** | **Integer**| Top resulting image margin. | [optional] 
 **bottom_margin** | **Integer**| Bottom resulting image margin. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data


# **get_convert_document_to_pdf_by_url**
> Hash get_convert_document_to_pdf_by_url(source_url, opts)

Convert the HTML page from the web by its URL to PDF.

### Example
```ruby
# load the gem
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing

CONFIG = {
    "basePath":"https://api.aspose.cloud/v3.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

source_url = "https://www.yahoo.com" # String | Source page URL.

opts = { 
  width: 800, # Integer | Resulting image width. 
  height: 1000, # Integer | Resulting image height. 
  left_margin: 50, # Integer | Left resulting image margin.
  right_margin: 50, # Integer | Right resulting image margin.
  top_margin: 50, # Integer | Top resulting image margin.
  bottom_margin: 50, # Integer | Bottom resulting image margin.
  folder: "remote_folder", # String | The document folder.
  storage: "remote_storage" # String | The document storage.
}

begin
  #Convert the HTML page from the web by its URL to PDF.
  result = api_instance.get_convert_document_to_pdf_by_url(source_url, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_convert_document_to_pdf_by_url: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_url** | **String**| Source page URL. | 
 **width** | **Integer**| Resulting image width.  | [optional] 
 **height** | **Integer**| Resulting image height.  | [optional] 
 **left_margin** | **Integer**| Left resulting image margin. | [optional] 
 **right_margin** | **Integer**| Right resulting image margin. | [optional] 
 **top_margin** | **Integer**| Top resulting image margin. | [optional] 
 **bottom_margin** | **Integer**| Bottom resulting image margin. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data


# **get_convert_document_to_xps**
> Hash get_convert_document_to_xps(name, opts)

Convert the HTML document from the storage by its name to XPS.

### Example
```ruby
# load the gem
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing

CONFIG = {
    "basePath":"https://api.aspose.cloud/v3.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

name = "test.html" # String | Document name.

opts = { 
  width: 700, # Integer | Resulting image width. 
  height: 900, # Integer | Resulting image height. 
  left_margin: 50, # Integer | Left resulting image margin.
  right_margin: 50, # Integer | Right resulting image margin.
  top_margin: 50, # Integer | Top resulting image margin.
  bottom_margin: 50, # Integer | Bottom resulting image margin.
  folder: "remote_folder", # String | The document folder.
  storage: "remote_storage" # String | The document storage.
}

begin
  #Convert the HTML document from the storage by its name to XPS.
  result = api_instance.get_convert_document_to_xps(name, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_convert_document_to_xps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | html, epub, svg formats
 **width** | **Integer**| Resulting image width.  | [optional] 
 **height** | **Integer**| Resulting image height.  | [optional] 
 **left_margin** | **Integer**| Left resulting image margin. | [optional] 
 **right_margin** | **Integer**| Right resulting image margin. | [optional] 
 **top_margin** | **Integer**| Top resulting image margin. | [optional] 
 **bottom_margin** | **Integer**| Bottom resulting image margin. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data


# **get_convert_document_to_xps_by_url**
> Hash get_convert_document_to_xps_by_url(source_url, opts)

Convert the HTML page from the web by its URL to XPS.

### Example
```ruby
# load the gem
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing

CONFIG = {
    "basePath":"https://api.aspose.cloud/v3.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

source_url = "https://www.gmail.com" # String | Source page URL.

opts = { 
  width: 800, # Integer | Resulting image width. 
  height: 1000, # Integer | Resulting image height. 
  left_margin: 50, # Integer | Left resulting image margin.
  right_margin: 50, # Integer | Right resulting image margin.
  top_margin: 50, # Integer | Top resulting image margin.
  bottom_margin: 50, # Integer | Bottom resulting image margin.
  folder: "remote_folder", # String | The document folder.
  storage: "remote_storage" # String | The document storage.
}

begin
  #Convert the HTML page from the web by its URL to XPS.
  result = api_instance.get_convert_document_to_xps_by_url(source_url, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_convert_document_to_xps_by_url: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_url** | **String**| Source page URL. | 
 **width** | **Integer**| Resulting image width.  | [optional] 
 **height** | **Integer**| Resulting image height.  | [optional] 
 **left_margin** | **Integer**| Left resulting image margin. | [optional] 
 **right_margin** | **Integer**| Right resulting image margin. | [optional] 
 **top_margin** | **Integer**| Top resulting image margin. | [optional] 
 **bottom_margin** | **Integer**| Bottom resulting image margin. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data


# **post_convert_document_in_request_to_image**
> Hash post_convert_document_in_request_to_image(out_path, out_format, file, opts)

Converts the HTML document (in request content) to the specified image format and uploads resulting file to storage.

### Example
```ruby
# load the gem
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing

CONFIG = {
    "basePath":"https://api.aspose.cloud/v3.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.jpg)

out_format = "out_format_example" # String | 

file = File.realpath("/path/to/file.html") # String | File path to be converted.

opts = { 
  width: 800, # Integer | Resulting document page width in points (1/96 inch).
  height: 1000, # Integer | Resulting document page height in points (1/96 inch).
  left_margin: 10, # Integer | Left resulting document page margin in points (1/96 inch).
  right_margin: 10, # Integer | Right resulting document page margin in points (1/96 inch).
  top_margin: 20, # Integer | Top resulting document page margin in points (1/96 inch).
  bottom_margin: 20, # Integer | Bottom resulting document page margin in points (1/96 inch).
  resolution: 300 # Integer | Resolution of resulting image. Default is 96 dpi.
}

begin
  #Converts the HTML document (in request content) to the specified image format and uploads resulting file to storage.
  result = api_instance.post_convert_document_in_request_to_image(out_path, out_format, file, opts)
  p result # See tests
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->post_convert_document_in_request_to_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.jpg) | 
 **out_format** | **String**|  | jpeg, png, bmp, tiff, gif
 **file** | **String**| Path to local file. | 
 **width** | **Integer**| Resulting document page width in points (1/96 inch). | [optional] 
 **height** | **Integer**| Resulting document page height in points (1/96 inch). | [optional] 
 **left_margin** | **Integer**| Left resulting document page margin in points (1/96 inch). | [optional] 
 **right_margin** | **Integer**| Right resulting document page margin in points (1/96 inch). | [optional] 
 **top_margin** | **Integer**| Top resulting document page margin in points (1/96 inch). | [optional] 
 **bottom_margin** | **Integer**| Bottom resulting document page margin in points (1/96 inch). | [optional] 
 **resolution** | **Integer**| Resolution of resulting image. Default is 96 dpi. | [optional] 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

# **post_convert_document_in_request_to_pdf**
> Hash post_convert_document_in_request_to_pdf(out_path, file, opts)

Converts the HTML document (in request content) to PDF and uploads resulting file to storage.

### Example
```ruby
# load the gem
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing

CONFIG = {
    "basePath":"https://api.aspose.cloud/v3.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.pdf)

file = File.realpath("/path/to/file.html") # String | File path to be converted.

opts = { 
  width: 800, # Integer | Resulting document page width in points (1/96 inch).
  height: 1000, # Integer | Resulting document page height in points (1/96 inch).
  left_margin: 10, # Integer | Left resulting document page margin in points (1/96 inch).
  right_margin: 10, # Integer | Right resulting document page margin in points (1/96 inch).
  top_margin: 10, # Integer | Top resulting document page margin in points (1/96 inch).
  bottom_margin: 10 # Integer | Bottom resulting document page margin in points (1/96 inch).
}

begin
  #Converts the HTML document (in request content) to PDF and uploads resulting file to storage.
  result = api_instance.post_convert_document_in_request_to_pdf(out_path, file, opts)
  p result # See tests
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->post_convert_document_in_request_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.pdf) | 
 **file** | **String**| A file to be converted. | html, epub, svg formats
 **width** | **Integer**| Resulting document page width in points (1/96 inch). | [optional] 
 **height** | **Integer**| Resulting document page height in points (1/96 inch). | [optional] 
 **left_margin** | **Integer**| Left resulting document page margin in points (1/96 inch). | [optional] 
 **right_margin** | **Integer**| Right resulting document page margin in points (1/96 inch). | [optional] 
 **top_margin** | **Integer**| Top resulting document page margin in points (1/96 inch). | [optional] 
 **bottom_margin** | **Integer**| Bottom resulting document page margin in points (1/96 inch). | [optional] 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json


# **post_convert_document_in_request_to_xps**
> File post_convert_document_in_request_to_xps(out_path, file, opts)

Converts the HTML document (in request content) to XPS and uploads resulting file to storage.

### Example
```ruby
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing

CONFIG = {
    "basePath":"https://api.aspose.cloud/v3.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.xps)

file = File.realpath("/path/to/file.html") # String | File path to be converted.

opts = { 
  width: 800, # Integer | Resulting document page width in points (1/96 inch).
  height: 1000, # Integer | Resulting document page height in points (1/96 inch).
  left_margin: 10, # Integer | Left resulting document page margin in points (1/96 inch).
  right_margin: 10, # Integer | Right resulting document page margin in points (1/96 inch).
  top_margin: 10, # Integer | Top resulting document page margin in points (1/96 inch).
  bottom_margin: 10 # Integer | Bottom resulting document page margin in points (1/96 inch).
}

begin
  #Converts the HTML document (in request content) to XPS and uploads resulting file to storage.
  result = api_instance.post_convert_document_in_request_to_xps(out_path, file, opts)
  p result # See tests
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->post_convert_document_in_request_to_xps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.xps) | 
 **file** | **String**| A file to be converted. | html, epub, svg formats
 **width** | **Integer**| Resulting document page width in points (1/96 inch). | [optional] 
 **height** | **Integer**| Resulting document page height in points (1/96 inch). | [optional] 
 **left_margin** | **Integer**| Left resulting document page margin in points (1/96 inch). | [optional] 
 **right_margin** | **Integer**| Right resulting document page margin in points (1/96 inch). | [optional] 
 **top_margin** | **Integer**| Top resulting document page margin in points (1/96 inch). | [optional] 
 **bottom_margin** | **Integer**| Bottom resulting document page margin in points (1/96 inch). | [optional] 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json


# **put_convert_document_to_image**
> File put_convert_document_to_image(name, out_path, out_format, opts)

Converts the HTML document (located on storage) to the specified image format and uploads resulting file to storage.

### Example
```ruby
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing

CONFIG = {
    "basePath":"https://api.aspose.cloud/v3.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

name = "name_example" # String | Document name.

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.jpg)

out_format = "out_format_example" # String | 

opts = { 
  width: 800, # Integer | Resulting document page width in points (1/96 inch).
  height: 1000, # Integer | Resulting document page height in points (1/96 inch).
  left_margin: 10, # Integer | Left resulting document page margin in points (1/96 inch).
  right_margin: 10, # Integer | Right resulting document page margin in points (1/96 inch).
  top_margin: 10, # Integer | Top resulting document page margin in points (1/96 inch).
  bottom_margin: 10, # Integer | Bottom resulting document page margin in points (1/96 inch).
  resolution: 100, # Integer | Resolution of resulting image. Default is 96 dpi.
  folder: "folder_example", # String | The source document folder.
  storage: "storage_example" # String | The source and resulting document storage.
}

begin
  #Converts the HTML document (located on storage) to the specified image format and uploads resulting file to storage.
  result = api_instance.put_convert_document_to_image(name, out_path, out_format, opts)
  p result # See tests
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->put_convert_document_to_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | html, epub, svg formats
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.jpg) | 
 **out_format** | **String**|  | jpeg, png, bmp, tiff, gif
 **width** | **Integer**| Resulting document page width in points (1/96 inch). | [optional] 
 **height** | **Integer**| Resulting document page height in points (1/96 inch). | [optional] 
 **left_margin** | **Integer**| Left resulting document page margin in points (1/96 inch). | [optional] 
 **right_margin** | **Integer**| Right resulting document page margin in points (1/96 inch). | [optional] 
 **top_margin** | **Integer**| Top resulting document page margin in points (1/96 inch). | [optional] 
 **bottom_margin** | **Integer**| Bottom resulting document page margin in points (1/96 inch). | [optional] 
 **resolution** | **Integer**| Resolution of resulting image. Default is 96 dpi. | [optional] 
 **folder** | **String**| The source document folder. | [optional] 
 **storage** | **String**| The source and resulting document storage. | [optional] 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


# **put_convert_document_to_pdf**
> Hash put_convert_document_to_pdf(name, out_path, opts)

Converts the HTML document (located on storage) to PDF and uploads resulting file to storage.

### Example
```ruby
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing

CONFIG = {
    "basePath":"https://api.aspose.cloud/v3.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

name = "name_example" # String | Document name.

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.pdf)

opts = { 
  width: 800, # Integer | Resulting document page width in points (1/96 inch).
  height: 1000, # Integer | Resulting document page height in points (1/96 inch).
  left_margin: 10, # Integer | Left resulting document page margin in points (1/96 inch).
  right_margin: 10, # Integer | Right resulting document page margin in points (1/96 inch).
  top_margin: 10, # Integer | Top resulting document page margin in points (1/96 inch).
  bottom_margin: 10, # Integer | Bottom resulting document page margin in points (1/96 inch).
  folder: "folder_example", # String | The source document folder.
  storage: "storage_example" # String | The source and resulting document storage.
}

begin
  #Converts the HTML document (located on storage) to PDF and uploads resulting file to storage.
  result = api_instance.put_convert_document_to_pdf(name, out_path, opts)
  p result # See tests
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->put_convert_document_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | html, epub, svg formats
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.pdf) | 
 **width** | **Integer**| Resulting document page width in points (1/96 inch). | [optional] 
 **height** | **Integer**| Resulting document page height in points (1/96 inch). | [optional] 
 **left_margin** | **Integer**| Left resulting document page margin in points (1/96 inch). | [optional] 
 **right_margin** | **Integer**| Right resulting document page margin in points (1/96 inch). | [optional] 
 **top_margin** | **Integer**| Top resulting document page margin in points (1/96 inch). | [optional] 
 **bottom_margin** | **Integer**| Bottom resulting document page margin in points (1/96 inch). | [optional] 
 **folder** | **String**| The source document folder. | [optional] 
 **storage** | **String**| The source and resulting document storage. | [optional] 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


# **put_convert_document_to_xps**
> Hash put_convert_document_to_xps(name, out_path, opts)

Converts the HTML document (located on storage) to XPS and uploads resulting file to storage.

### Example
```ruby
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing

CONFIG = {
    "basePath":"https://api.aspose.cloud/v3.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

name = "name_example" # String | Document name.

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.xps)

opts = { 
  width: 600, # Integer | Resulting document page width in points (1/96 inch).
  height: 800, # Integer | Resulting document page height in points (1/96 inch).
  left_margin: 20, # Integer | Left resulting document page margin in points (1/96 inch).
  right_margin: 20, # Integer | Right resulting document page margin in points (1/96 inch).
  top_margin: 20, # Integer | Top resulting document page margin in points (1/96 inch).
  bottom_margin: 20, # Integer | Bottom resulting document page margin in points (1/96 inch).
  folder: "folder_example", # String | The source document folder.
  storage: "storage_example" # String | The source and resulting document storage.
}

begin
  #Converts the HTML document (located on storage) to XPS and uploads resulting file to storage.
  result = api_instance.put_convert_document_to_xps(name, out_path, opts)
  p result # See tests
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->put_convert_document_to_xps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | html, epub, svg formats
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.xps) | 
 **width** | **Integer**| Resulting document page width in points (1/96 inch). | [optional] 
 **height** | **Integer**| Resulting document page height in points (1/96 inch). | [optional] 
 **left_margin** | **Integer**| Left resulting document page margin in points (1/96 inch). | [optional] 
 **right_margin** | **Integer**| Right resulting document page margin in points (1/96 inch). | [optional] 
 **top_margin** | **Integer**| Top resulting document page margin in points (1/96 inch). | [optional] 
 **bottom_margin** | **Integer**| Bottom resulting document page margin in points (1/96 inch). | [optional] 
 **folder** | **String**| The source document folder. | [optional] 
 **storage** | **String**| The source and resulting document storage. | [optional] 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


# **get_convert_document_to_mhtml_by_url**
> Hash get_convert_document_to_mhtml_by_url(source_url)

Converts the HTML page from Web by its URL to MHTML returns resulting file in response content.

### Example
```ruby
# load the gem
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing

CONFIG = {
    "basePath":"https://api.aspose.cloud/v3.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

source_url = 'source_url_example' # String | Source page URL.

begin
  #Converts the HTML page from Web by its URL to MHTML returns resulting file in response content.
  result = api_instance.get_convert_document_to_mhtml_by_url(source_url)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_convert_document_to_mhtml_by_url: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_url** | **String**| Source page URL. |

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data


# **get_convert_document_to_markdown**
> Hash get_convert_document_to_markdown(name, opts)

Converts the HTML document (located on storage) to Markdown and returns resulting file in response content.

### Example
```ruby
# load the gem
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing

CONFIG = {
    "basePath":"https://api.aspose.cloud/v3.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

name = 'name_example' # String | Document name.

opts = { 
  use_git: "false", # String | Use Git Markdown flavor to save ("true"/"false").
  folder: 'folder_example', # String | Source document folder.
  storage: 'storage_example' # String | Source document storage.
}

begin
  #Converts the HTML document (located on storage) to Markdown and returns resulting file in response content.
  result = api_instance.get_convert_document_to_markdown(name, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_convert_document_to_markdown: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **use_git** | **String**| Use Git Markdown flavor to save ("true"/"false"). | [optional] [default to "false"]
 **folder** | **String**| Source document folder. | [optional] 
 **storage** | **String**| Source document storage. | [optional] 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data


# **post_convert_document_in_request_to_markdown**
> Hash post_convert_document_in_request_to_markdown(out_path, file, opts)

Converts the HTML document (in request content) to Markdown and uploads resulting file to storage by specified path.

### Example
```ruby
# load the gem
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing

CONFIG = {
    "basePath":"https://api.aspose.cloud/v3.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

out_path = 'out_path_example' # String | Full resulting file path in the storage (ex. /folder1/folder2/result.md)

file = File.realpath("/path/to/file.html") # String | File path to be converted.

opts = { 
  use_git: "false",          # String | Use Git Markdown flavor to save ("true"/"false").
  storage: 'storage_example' # String | The source and resulting document storage.
}

begin
  #Converts the HTML document (in request content) to Markdown and uploads resulting file to storage by specified path.
  result = api_instance.post_convert_document_in_request_to_markdown(out_path, file, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->post_convert_document_in_request_to_markdown: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting file path in the storage (ex. /folder1/folder2/result.md) | 
 **file** | **String**| File path to be converted. | 
 **use_git** | **String**| Use Git Markdown flavor to save ("true"/"false"). | [optional] [default to "false"]
 **storage** | **String**| The source and resulting document storage. | [optional] 


### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json


# **put_convert_document_to_markdown**
> Hash put_convert_document_to_markdown(name, out_path, opts)

Converts the HTML document (located on storage) to Markdown and uploads resulting file to storage by specified path.

### Example
```ruby
# load the gem
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing

CONFIG = {
    "basePath":"https://api.aspose.cloud/v3.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

name = 'name_example' # String | Document name.

out_path = 'out_path_example' # String | Full resulting file path in the storage (ex. /folder1/folder2/result.md)

opts = { 
  use_git: "false", # String | Use Git Markdown flavor to save ("true"/"false").
  folder: 'folder_example', # String | The source document folder.
  storage: 'storage_example' # String | The source and resulting document storage.
}

begin
  #Converts the HTML document (located on storage) to Markdown and uploads resulting file to storage by specified path.
  result = api_instance.put_convert_document_to_markdown(name, out_path, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->put_convert_document_to_markdown: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **out_path** | **String**| Full resulting file path in the storage (ex. /folder1/folder2/result.md) | 
 **use_git** | **String**| Use Git Markdown flavor to save ("true"/"false"). | [optional] [default to "false"]
 **folder** | **String**| The source document folder. | [optional] 
 **storage** | **String**| The source and resulting document storage. | [optional] 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json
