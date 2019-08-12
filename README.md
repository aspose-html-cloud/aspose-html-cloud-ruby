# Aspose HTML Cloud SDK

AsposeHtml - the Ruby gem for the Aspose.HTML for Cloud API Reference

- API version: 3.0
- Package version: 19.5.0

## Requirements
- Ruby >= 1.9
- libcurl.dll (libcurl.so)

## Installation
```shell
bundle install --jobs 4
```

### Build a gem

To build the Ruby code into a gem:

```shell
gem build aspose_html_cloud.gemspec
```

Then either install the gem locally:

```shell
gem install ./aspose_html_cloud-19.5.0.gem
```
(for development, run `gem install --dev ./aspose_html_cloud-19.5.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'aspose_html_cloud', '~> 19.5.0'

### Load from git

    git clone https://github.com/aspose-html-cloud/aspose-html-cloud-ruby.git
    cd aspose-html-cloud-ruby
    
### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/aspose-html-cloud/aspose-html-cloud-ruby.git, then add the following in the Gemfile:

    gem 'aspose_html_cloud', :git => 'https://github.com/aspose-html-cloud/aspose-html-cloud-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib aspose_html_cloud.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'aspose_html_cloud'


CONFIG = {
    "basePath":"https://api.aspose.cloud/v3.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

name = "test.html" # String | Document name.

out_format = "png" # String | Resulting image format.

opts = { 
  width: 800, # Integer | Resulting image width. 
  height: 1000, # Integer | Resulting image height. 
  left_margin: 10, # Integer | Left resulting image margin.
  right_margin: 10, # Integer | Right resulting image margin.
  top_margin: 20, # Integer | Top resulting image margin.
  bottom_margin: 20, # Integer | Bottom resulting image margin.
  resolution: 300, # Integer | Resolution of resulting image.
  folder: "/", # String | The source document folder.
  storage: nil # String | The source document storage.
}

begin
  #Convert the HTML document from the storage by its name to the specified image format.
  result = api_instance.get_convert_document_to_image(name, out_format, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_convert_document_to_image: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.aspose.cloud/v3.0*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AsposeHtml::HtmlApi* | [**get_convert_document_to_image**](docs/ConversionApi.md#get_convert_document_to_image) | **GET** /html/{name}/convert/image/{outFormat} | Convert the HTML document from the storage by its name to the specified image format.
*AsposeHtml::HtmlApi* | [**get_convert_document_to_image_by_url**](docs/ConversionApi.md#get_convert_document_to_image_by_url) | **GET** /html/convert/image/{outFormat} | Convert the HTML page from the web by its URL to the specified image format.
*AsposeHtml::HtmlApi* | [**get_convert_document_to_pdf**](docs/ConversionApi.md#get_convert_document_to_pdf) | **GET** /html/{name}/convert/pdf | Convert the HTML document from the storage by its name to PDF.
*AsposeHtml::HtmlApi* | [**get_convert_document_to_pdf_by_url**](docs/ConversionApi.md#get_convert_document_to_pdf_by_url) | **GET** /html/convert/pdf | Convert the HTML page from the web by its URL to PDF.
*AsposeHtml::HtmlApi* | [**get_convert_document_to_xps**](docs/ConversionApi.md#get_convert_document_to_xps) | **GET** /html/{name}/convert/xps | Convert the HTML document from the storage by its name to XPS.
*AsposeHtml::HtmlApi* | [**get_convert_document_to_xps_by_url**](docs/ConversionApi.md#get_convert_document_to_xps_by_url) | **GET** /html/convert/xps | Convert the HTML page from the web by its URL to XPS.
*AsposeHtml::HtmlApi* | [**post_convert_document_in_request_to_image**](docs/ConversionApi.md#post_convert_document_in_request_to_image) | **POST** /html/convert/image/{outFormat} | Converts the HTML document (in request content) to the specified image format and uploads resulting file to storage.
*AsposeHtml::HtmlApi* | [**post_convert_document_in_request_to_pdf**](docs/ConversionApi.md#post_convert_document_in_request_to_pdf) | **POST** /html/convert/pdf | Converts the HTML document (in request content) to PDF and uploads resulting file to storage.
*AsposeHtml::HtmlApi* | [**post_convert_document_in_request_to_xps**](docs/ConversionApi.md#post_convert_document_in_request_to_xps) | **POST** /html/convert/xps | Converts the HTML document (in request content) to XPS and uploads resulting file to storage.
*AsposeHtml::HtmlApi* | [**get_convert_document_to_mhtml_by_url**](docs/ConversionApi.md#get_convert_document_to_mhtml_by_url) | **GET** /html/convert/mhtml | Converts the HTML page from Web by its URL to MHTML returns resulting file in response content.
*AsposeHtml::HtmlApi* | [**put_convert_document_to_image**](docs/ConversionApi.md#put_convert_document_to_image) | **PUT** /html/{name}/convert/image/{outFormat} | Converts the HTML document (located on storage) to the specified image format and uploads resulting file to storage.
*AsposeHtml::HtmlApi* | [**put_convert_document_to_pdf**](docs/ConversionApi.md#put_convert_document_to_pdf) | **PUT** /html/{name}/convert/pdf | Converts the HTML document (located on storage) to PDF and uploads resulting file to storage.
*AsposeHtml::HtmlApi* | [**put_convert_document_to_xps**](docs/ConversionApi.md#put_convert_document_to_xps) | **PUT** /html/{name}/convert/xps | Converts the HTML document (located on storage) to XPS and uploads resulting file to storage.
*AsposeHtml::HtmlApi* | [**get_convert_document_to_markdown**](docs/ConversionApi.md#get_convert_document_to_markdown) | **GET** /html/{name}/convert/md | Converts the HTML document (located on storage) to Markdown and returns resulting file in response content.
*AsposeHtml::HtmlApi* | [**post_convert_document_in_request_to_markdown**](docs/ConversionApi.md#post_convert_document_in_request_to_markdown) | **POST** /html/convert/md | Converts the HTML document (in request content) to Markdown and uploads resulting file to storage by specified path.
*AsposeHtml::HtmlApi* | [**put_convert_document_to_markdown**](docs/ConversionApi.md#put_convert_document_to_markdown) | **PUT** /html/{name}/convert/md | Converts the HTML document (located on storage) to Markdown and uploads resulting file to storage by specified path.
*AsposeHtml::HtmlApi* | [**get_convert_markdown_to_html**](docs/ImportApi.md#get_convert_markdown_to_html) | **GET** /html/{name}/import/md | Converts the Markdown document (located on storage) to HTML and returns resulting file in response content.
*AsposeHtml::HtmlApi* | [**post_convert_markdown_in_request_to_html**](docs/ImportApi.md#post_convert_markdown_in_request_to_html) | **POST** /html/import/md | Converts the Markdown document (in request content) to HTML and uploads resulting file to storage by specified path.
*AsposeHtml::HtmlApi* | [**put_convert_markdown_to_html**](docs/ImportApi.md#put_convert_markdown_to_html) | **PUT** /html/{name}/import/md | Converts the Markdown document (located on storage) to HTML and uploads resulting file to storage by specified path.
*AsposeHtml::HtmlApi* | [**get_document_by_url**](docs/DocumentApi.md#get_document_by_url) | **GET** /html/download | Return all HTML page with linked resources packaged as a ZIP archive by the source page URL.
*AsposeHtml::HtmlApi* | [**get_document_fragment_by_x_path**](docs/DocumentApi.md#get_document_fragment_by_x_path) | **GET** /html/{name}/fragments/{outFormat} | Return list of HTML fragments matching the specified XPath query. 
*AsposeHtml::HtmlApi* | [**get_document_fragment_by_x_path_by_url**](docs/DocumentApi.md#get_document_fragment_by_x_path_by_url) | **GET** /html/fragments/{outFormat} | Return list of HTML fragments matching the specified XPath query by the source page URL.
*AsposeHtml::HtmlApi* | [**get_document_fragments_by_css_selector**](docs/DocumentApi.md#get_document_fragments_by_css_selector) | **GET** /html/{name}/fragments/css/{outFormat} | Return list of HTML fragments matching the specified CSS selector.
*AsposeHtml::HtmlApi* | [**get_document_fragments_by_css_selector_by_url**](docs/DocumentApi.md#get_document_fragments_by_css_selector_by_url) | **GET** /html/fragments/css/{outFormat} | Return list of HTML fragments matching the specified CSS selector by the source page URL.
*AsposeHtml::HtmlApi* | [**get_document_images**](docs/DocumentApi.md#get_document_images) | **GET** /html/{name}/images/all | Return all HTML document images packaged as a ZIP archive.
*AsposeHtml::HtmlApi* | [**get_document_images_by_url**](docs/DocumentApi.md#get_document_images_by_url) | **GET** /html/images/all | Return all HTML page images packaged as a ZIP archive by the source page URL.
*AsposeHtml::HtmlApi* | [**get_recognize_and_import_to_html**](docs/OcrApi.md#get_recognize_and_import_to_html) | **GET** /html/{name}/ocr/import | Recognize text from the image file in the storage and import it to HTML format.
*AsposeHtml::HtmlApi* | [**get_recognize_and_translate_to_html**](docs/OcrApi.md#get_recognize_and_translate_to_html) | **GET** /html/{name}/ocr/translate/{srcLang}/{resLang} | Recognize text from the image file in the storage, import it to HTML format and translate to specified language.
*AsposeHtml::HtmlApi* | [**get_translate_document**](docs/TranslationApi.md#get_translate_document) | **GET** /html/{name}/translate/{srcLang}/{resLang} | Translate the HTML document specified by the name from default or specified storage. 
*AsposeHtml::HtmlApi* | [**get_translate_document_by_url**](docs/TranslationApi.md#get_translate_document_by_url) | **GET** /html/translate/{srcLang}/{resLang} | Translate the HTML document from Web specified by its URL.
*AsposeHtml::HtmlApi* | [**get_detect_html_keywords**](docs/SummarizationApi.md#get_detect_html_keywords) | **GET** /html/{name}/summ/keywords | Get the HTML document keywords using the keyword detection service.
*AsposeHtml::HtmlApi* | [**get_detect_html_keywords_by_url**](docs/SummarizationApi.md#get_detect_html_keywords_by_url) | **GET** /html/summ/keywords | Get the keywords from HTML document from Web specified by its URL using the keyword detection service
*AsposeHtml::HtmlApi* | [**get_merge_html_template**](docs/TemplateMergeApi.md#get_merge_html_template) | **GET** /html/{templateName}/merge | Populate HTML document template with data located as a file in the storage.
*AsposeHtml::HtmlApi* | [**post_merge_html_template**](docs/TemplateMergeApi.md#post_merge_html_template) | **POST** /html/{templateName}/merge | Populate HTML document template with data from the request body. Result document will be saved to storage.

## oauth

- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: "https://api.aspose.cloud/connect/token"
- **Scopes**: N/A

[Tests](./spec/api/html_api_spec.rb) contain various examples of using the Aspose.HTML SDK.

[Docs](./docs/) Documentation for Aspose.HTML Api SDK

## Aspose HTML includes Aspose.Storage.Cloud to manipulate files on a remote server. This is used in tests for download test files to the server.

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AsposeHtml::StorageApi* | [**copy_file**](docs/storage/FileApi.md#copy_file) | **PUT** /html/storage/file/copy/{srcPath} | Copy file
*AsposeHtml::StorageApi* | [**delete_file**](docs/storage/FileApi.md#delete_file) | **DELETE** /html/storage/file/{path} | Delete file
*AsposeHtml::StorageApi* | [**download_file**](docs/storage/FileApi.md#download_file) | **GET** /html/storage/file/{path} | Download file
*AsposeHtml::StorageApi* | [**move_file**](docs/storage/FileApi.md#move_file) | **PUT** /html/storage/file/move/{srcPath} | Move file
*AsposeHtml::StorageApi* | [**upload_file**](docs/storage/FileApi.md#upload_file) | **PUT** /html/storage/file/{path} | Upload file
*AsposeHtml::StorageApi* | [**copy_folder**](docs/storage/FolderApi.md#copy_folder) | **PUT** /html/storage/folder/copy/{srcPath} | Copy folder
*AsposeHtml::StorageApi* | [**create_folder**](docs/storage/FolderApi.md#create_folder) | **PUT** /html/storage/folder/{path} | Create the folder
*AsposeHtml::StorageApi* | [**delete_folder**](docs/storage/FolderApi.md#delete_folder) | **DELETE** /html/storage/folder/{path} | Delete folder
*AsposeHtml::StorageApi* | [**get_files_list**](docs/storage/FolderApi.md#get_files_list) | **GET** /html/storage/folder/{path} | Get all files and folders within a folder
*AsposeHtml::StorageApi* | [**move_folder**](docs/storage/FolderApi.md#move_folder) | **PUT** /html/storage/folder/move/{srcPath} | Move folder
*AsposeHtml::StorageApi* | [**get_disc_usage**](docs/storage/StorageApi.md#get_disc_usage) | **GET** /html/storage/disc | Get disc usage
*AsposeHtml::StorageApi* | [**get_file_versions**](docs/storage/StorageApi.md#get_file_versions) | **GET** /html/storage/version/{path} | Get file versions
*AsposeHtml::StorageApi* | [**object_exists**](docs/storage/StorageApi.md#object_exists) | **GET** /html/storage/exist/{path} | Check if file or folder exists
*AsposeHtml::StorageApi* | [**storage_exists**](docs/storage/StorageApi.md#storage_exists) | **GET** /html/storage/{storageName}/exist | Check if storage exists


## Documentation for Models

 - [AsposeHtml::DiscUsage](docs/storage/DiscUsage.md)
 - [AsposeHtml::Error](docs/storage/Error.md)
 - [AsposeHtml::ErrorDetails](docs/storage/ErrorDetails.md)
 - [AsposeHtml::FileVersion](docs/storage/FileVersion.md)
 - [AsposeHtml::FileVersions](docs/storage/FileVersions.md)
 - [AsposeHtml::FilesList](docs/storage/FilesList.md)
 - [AsposeHtml::FilesUploadResult](docs/storage/FilesUploadResult.md)
 - [AsposeHtml::ObjectExist](docs/storage/ObjectExist.md)
 - [AsposeHtml::StorageExist](docs/storage/StorageExist.md)
 - [AsposeHtml::StorageFile](docs/storage/StorageFile.md)


[Tests](./spec/api/storage_api_spec.rb) contain various examples of using the Aspose.Storage SDK.

[Docs](docs/storage/) Documentation for Aspose.Storage Api SDK
