# -*- coding: utf-8 -*-
=begin
  --------------------------------------------------------------------------------------------------------------------
  <copyright company="Aspose" file="html_api.rb">
  </copyright>
  Copyright (c) 2020 Aspose.HTML for Cloud
  <summary>
   Permission is hereby granted, free of charge, to any person obtaining a copy
   of this software and associated documentation files (the "Software"), to deal
   in the Software without restriction, including without limitation the rights
   to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
   copies of the Software, and to permit persons to whom the Software is
   furnished to do so, subject to the following conditions:

   The above copyright notice and this permission notice shall be included in all
   copies or substantial portions of the Software.

   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
   OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
   SOFTWARE.
  </summary>
  --------------------------------------------------------------------------------------------------------------------
=end

require "uri"


module AsposeHtml
  class HtmlApi
    attr_accessor :api_client

    def initialize(args)
      @api_client = AsposeHtml::ApiClient.default(args)
    end


################################################################################
#                             Conversion Api
################################################################################


# Convert the HTML, EPUB, SVG document from the storage by its name to the specified image format.
#
# @param name Document name.
# @param out_format Resulting image format (jpeg, png, bmp, tiff, gif).
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting image width.
# @option opts [Integer] :height Resulting image height.
# @option opts [Integer] :left_margin Left resulting image margin.
# @option opts [Integer] :right_margin Right resulting image margin.
# @option opts [Integer] :top_margin Top resulting image margin.
# @option opts [Integer] :bottom_margin Bottom resulting image margin.
# @option opts [Integer] :resolution Resolution of resulting image.
# @option opts [String] :folder The source document folder.
# @option opts [String] :storage The source document storage.
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def get_convert_document_to_image(name, out_format, opts = {})
      data, _status_code, _headers = get_convert_document_to_image_with_http_info(name, out_format, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Convert the HTML, EPUB, SVG document from the storage by its name to the specified image format.
#
# @param name Document name.
# @param out_format Resulting image format(jpeg, png, bmp, tiff, gif).
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting image width.
# @option opts [Integer] :height Resulting image height.
# @option opts [Integer] :left_margin Left resulting image margin.
# @option opts [Integer] :right_margin Right resulting image margin.
# @option opts [Integer] :top_margin Top resulting image margin.
# @option opts [Integer] :bottom_margin Bottom resulting image margin.
# @option opts [Integer] :resolution Resolution of resulting image.
# @option opts [String] :folder The source document folder.
# @option opts [String] :storage The source document storage.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_convert_document_to_image_with_http_info(name, out_format, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug "Calling API: HtmlApi.get_convert_document_to_image ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling HtmlApi.get_convert_document_to_image"
      end
      # verify the required parameter 'out_format' is set
      if @api_client.config.client_side_validation && out_format.nil?
        fail ArgumentError, "Missing the required parameter 'out_format' when calling HtmlApi.get_convert_document_to_image"
      end
      # resource path
      local_var_path = "/html/{name}/convert/image/{outFormat}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'outFormat' + '}', out_format.to_s)

      # query parameters
      query_params = {}
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'leftMargin'] = opts[:'left_margin'] if !opts[:'left_margin'].nil?
      query_params[:'rightMargin'] = opts[:'right_margin'] if !opts[:'right_margin'].nil?
      query_params[:'topMargin'] = opts[:'top_margin'] if !opts[:'top_margin'].nil?
      query_params[:'bottomMargin'] = opts[:'bottom_margin'] if !opts[:'bottom_margin'].nil?
      query_params[:'resolution'] = opts[:'resolution'] if !opts[:'resolution'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#get_convert_document_to_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Convert the HTML page from the web by its URL to the specified image format.
#
# @param source_url Source page URL.
# @param out_format Resulting image format(jpeg, png, bmp, tiff, gif).
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting image width.
# @option opts [Integer] :height Resulting image height.
# @option opts [Integer] :left_margin Left resulting image margin.
# @option opts [Integer] :right_margin Right resulting image margin.
# @option opts [Integer] :top_margin Top resulting image margin.
# @option opts [Integer] :bottom_margin Bottom resulting image margin.
# @option opts [Integer] :resolution Resolution of resulting image.
# @option opts [String] :folder The document folder.
# @option opts [String] :storage The document storage.
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def get_convert_document_to_image_by_url(source_url, out_format, opts = {})
      data, _status_code, _headers = get_convert_document_to_image_by_url_with_http_info(source_url, out_format, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Convert the HTML page from the web by its URL to the specified image format.
#
# @param source_url Source page URL.
# @param out_format Resulting image format(jpeg, png, bmp, tiff, gif).
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting image width.
# @option opts [Integer] :height Resulting image height.
# @option opts [Integer] :left_margin Left resulting image margin.
# @option opts [Integer] :right_margin Right resulting image margin.
# @option opts [Integer] :top_margin Top resulting image margin.
# @option opts [Integer] :bottom_margin Bottom resulting image margin.
# @option opts [Integer] :resolution Resolution of resulting image.
# @option opts [String] :folder The document folder.
# @option opts [String] :storage The document storage.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_convert_document_to_image_by_url_with_http_info(source_url, out_format, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug "Calling API: HtmlApi.get_convert_document_to_image_by_url ..."
      end
      # verify the required parameter 'source_url' is set
      if @api_client.config.client_side_validation && source_url.nil?
        fail ArgumentError, "Missing the required parameter 'source_url' when calling HtmlApi.get_convert_document_to_image_by_url"
      end
      # verify the required parameter 'out_format' is set
      if @api_client.config.client_side_validation && out_format.nil?
        fail ArgumentError, "Missing the required parameter 'out_format' when calling HtmlApi.get_convert_document_to_image_by_url"
      end
      # resource path
      local_var_path = "/html/convert/image/{outFormat}".sub('{' + 'outFormat' + '}', out_format.to_s)

      # query parameters
      query_params = {}
      query_params[:'sourceUrl'] = source_url
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'leftMargin'] = opts[:'left_margin'] if !opts[:'left_margin'].nil?
      query_params[:'rightMargin'] = opts[:'right_margin'] if !opts[:'right_margin'].nil?
      query_params[:'topMargin'] = opts[:'top_margin'] if !opts[:'top_margin'].nil?
      query_params[:'bottomMargin'] = opts[:'bottom_margin'] if !opts[:'bottom_margin'].nil?
      query_params[:'resolution'] = opts[:'resolution'] if !opts[:'resolution'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#get_convert_document_to_image_by_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Convert the HTML, EPUB, SVG document from the storage by its name to PDF.
#
# @param name Document name.
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting image width.
# @option opts [Integer] :height Resulting image height.
# @option opts [Integer] :left_margin Left resulting image margin.
# @option opts [Integer] :right_margin Right resulting image margin.
# @option opts [Integer] :top_margin Top resulting image margin.
# @option opts [Integer] :bottom_margin Bottom resulting image margin.
# @option opts [String] :folder The document folder.
# @option opts [String] :storage The document storage.
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def get_convert_document_to_pdf(name, opts = {})
      data, _status_code, _headers = get_convert_document_to_pdf_with_http_info(name, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Convert the HTML, EPUB, SVG document from the storage by its name to PDF.
#
# @param name Document name.
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting image width.
# @option opts [Integer] :height Resulting image height.
# @option opts [Integer] :left_margin Left resulting image margin.
# @option opts [Integer] :right_margin Right resulting image margin.
# @option opts [Integer] :top_margin Top resulting image margin.
# @option opts [Integer] :bottom_margin Bottom resulting image margin.
# @option opts [String] :folder The document folder.
# @option opts [String] :storage The document storage.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_convert_document_to_pdf_with_http_info(name, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug "Calling API: HtmlApi.get_convert_document_to_pdf ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling HtmlApi.get_convert_document_to_pdf"
      end
      # resource path
      local_var_path = "/html/{name}/convert/pdf".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'leftMargin'] = opts[:'left_margin'] if !opts[:'left_margin'].nil?
      query_params[:'rightMargin'] = opts[:'right_margin'] if !opts[:'right_margin'].nil?
      query_params[:'topMargin'] = opts[:'top_margin'] if !opts[:'top_margin'].nil?
      query_params[:'bottomMargin'] = opts[:'bottom_margin'] if !opts[:'bottom_margin'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#get_convert_document_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Convert the HTML page from the web by its URL to PDF.
#
# @param source_url Source page URL.
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting image width.
# @option opts [Integer] :height Resulting image height.
# @option opts [Integer] :left_margin Left resulting image margin.
# @option opts [Integer] :right_margin Right resulting image margin.
# @option opts [Integer] :top_margin Top resulting image margin.
# @option opts [Integer] :bottom_margin Bottom resulting image margin.
# @option opts [String] :folder The document folder.
# @option opts [String] :storage The document storage.
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def get_convert_document_to_pdf_by_url(source_url, opts = {})
      data, _status_code, _headers = get_convert_document_to_pdf_by_url_with_http_info(source_url, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Convert the HTML page from the web by its URL to PDF.
#
# @param source_url Source page URL.
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting image width.
# @option opts [Integer] :height Resulting image height.
# @option opts [Integer] :left_margin Left resulting image margin.
# @option opts [Integer] :right_margin Right resulting image margin.
# @option opts [Integer] :top_margin Top resulting image margin.
# @option opts [Integer] :bottom_margin Bottom resulting image margin.
# @option opts [String] :folder The document folder.
# @option opts [String] :storage The document storage.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_convert_document_to_pdf_by_url_with_http_info(source_url, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug "Calling API: HtmlApi.get_convert_document_to_pdf_by_url ..."
      end
      # verify the required parameter 'source_url' is set
      if @api_client.config.client_side_validation && source_url.nil?
        fail ArgumentError, "Missing the required parameter 'source_url' when calling HtmlApi.get_convert_document_to_pdf_by_url"
      end
      # resource path
      local_var_path = "/html/convert/pdf"

      # query parameters
      query_params = {}
      query_params[:'sourceUrl'] = source_url
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'leftMargin'] = opts[:'left_margin'] if !opts[:'left_margin'].nil?
      query_params[:'rightMargin'] = opts[:'right_margin'] if !opts[:'right_margin'].nil?
      query_params[:'topMargin'] = opts[:'top_margin'] if !opts[:'top_margin'].nil?
      query_params[:'bottomMargin'] = opts[:'bottom_margin'] if !opts[:'bottom_margin'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#get_convert_document_to_pdf_by_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Convert the HTML, EPUB, SVG document from the storage by its name to XPS.
#
# @param name Document name.
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting image width.
# @option opts [Integer] :height Resulting image height.
# @option opts [Integer] :left_margin Left resulting image margin.
# @option opts [Integer] :right_margin Right resulting image margin.
# @option opts [Integer] :top_margin Top resulting image margin.
# @option opts [Integer] :bottom_margin Bottom resulting image margin.
# @option opts [String] :folder The document folder.
# @option opts [String] :storage The document storage.
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def get_convert_document_to_xps(name, opts = {})
      data, _status_code, _headers = get_convert_document_to_xps_with_http_info(name, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Convert the HTML, EPUB, SVG document from the storage by its name to XPS.
#
# @param name Document name.
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting image width.
# @option opts [Integer] :height Resulting image height.
# @option opts [Integer] :left_margin Left resulting image margin.
# @option opts [Integer] :right_margin Right resulting image margin.
# @option opts [Integer] :top_margin Top resulting image margin.
# @option opts [Integer] :bottom_margin Bottom resulting image margin.
# @option opts [String] :folder The document folder.
# @option opts [String] :storage The document storage.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_convert_document_to_xps_with_http_info(name, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug "Calling API: HtmlApi.get_convert_document_to_xps ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling HtmlApi.get_convert_document_to_xps"
      end
      # resource path
      local_var_path = "/html/{name}/convert/xps".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'leftMargin'] = opts[:'left_margin'] if !opts[:'left_margin'].nil?
      query_params[:'rightMargin'] = opts[:'right_margin'] if !opts[:'right_margin'].nil?
      query_params[:'topMargin'] = opts[:'top_margin'] if !opts[:'top_margin'].nil?
      query_params[:'bottomMargin'] = opts[:'bottom_margin'] if !opts[:'bottom_margin'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#get_convert_document_to_xps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Convert the HTML page from the web by its URL to XPS.
#
# @param source_url Source page URL.
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting image width.
# @option opts [Integer] :height Resulting image height.
# @option opts [Integer] :left_margin Left resulting image margin.
# @option opts [Integer] :right_margin Right resulting image margin.
# @option opts [Integer] :top_margin Top resulting image margin.
# @option opts [Integer] :bottom_margin Bottom resulting image margin.
# @option opts [String] :folder The document folder.
# @option opts [String] :storage The document storage.
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def get_convert_document_to_xps_by_url(source_url, opts = {})
      data, _status_code, _headers = get_convert_document_to_xps_by_url_with_http_info(source_url, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Convert the HTML page from the web by its URL to XPS.
#
# @param source_url Source page URL.
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting image width.
# @option opts [Integer] :height Resulting image height.
# @option opts [Integer] :left_margin Left resulting image margin.
# @option opts [Integer] :right_margin Right resulting image margin.
# @option opts [Integer] :top_margin Top resulting image margin.
# @option opts [Integer] :bottom_margin Bottom resulting image margin.
# @option opts [String] :folder The document folder.
# @option opts [String] :storage The document storage.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_convert_document_to_xps_by_url_with_http_info(source_url, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug "Calling API: HtmlApi.get_convert_document_to_xps_by_url ..."
      end
      # verify the required parameter 'source_url' is set
      if @api_client.config.client_side_validation && source_url.nil?
        fail ArgumentError, "Missing the required parameter 'source_url' when calling HtmlApi.get_convert_document_to_xps_by_url"
      end
      # resource path
      local_var_path = "/html/convert/xps"

      # query parameters
      query_params = {}
      query_params[:'sourceUrl'] = source_url
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'leftMargin'] = opts[:'left_margin'] if !opts[:'left_margin'].nil?
      query_params[:'rightMargin'] = opts[:'right_margin'] if !opts[:'right_margin'].nil?
      query_params[:'topMargin'] = opts[:'top_margin'] if !opts[:'top_margin'].nil?
      query_params[:'bottomMargin'] = opts[:'bottom_margin'] if !opts[:'bottom_margin'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#get_convert_document_to_xps_by_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


# Converts the HTML, EPUB, SVG document (in request content) to the specified image format and uploads resulting file to storage.
#
# @param out_path Full resulting filename (ex. /folder1/folder2/result.jpg)
# @param out_format (jpeg, png, bmp, tiff, gif)
# @param file A file to be converted.
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting document page width in points (1/96 inch).
# @option opts [Integer] :height Resulting document page height in points (1/96 inch).
# @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
# @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
# @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
# @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
# @option opts [Integer] :resolution Resolution of resulting image. Default is 96 dpi.
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def post_convert_document_in_request_to_image(out_path, out_format, file, opts = {})
      data, _status_code, _headers = post_convert_document_in_request_to_image_with_http_info(out_path, out_format, file, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Converts the HTML, EPUB, SVG document (in request content) to the specified image format and uploads resulting file to storage.
#
# @param out_path Full resulting filename (ex. /folder1/folder2/result.jpg)
# @param out_format (jpeg, png, bmp, tiff, gif)
# @param file A file to be converted.
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting document page width in points (1/96 inch).
# @option opts [Integer] :height Resulting document page height in points (1/96 inch).
# @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
# @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
# @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
# @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
# @option opts [Integer] :resolution Resolution of resulting image. Default is 96 dpi.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def post_convert_document_in_request_to_image_with_http_info(out_path, out_format, file, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug "Calling API: HtmlApi.post_convert_document_in_request_to_image ..."
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling HtmlApi.post_convert_document_in_request_to_image"
      end
      # verify the required parameter 'out_format' is set
      if @api_client.config.client_side_validation && out_format.nil?
        fail ArgumentError, "Missing the required parameter 'out_format' when calling HtmlApi.post_convert_document_in_request_to_image"
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling HtmlApi.post_convert_document_in_request_to_image"
      end
      # resource path
      local_var_path = "/html/convert/image/{outFormat}".sub('{' + 'outFormat' + '}', out_format.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'leftMargin'] = opts[:'left_margin'] if !opts[:'left_margin'].nil?
      query_params[:'rightMargin'] = opts[:'right_margin'] if !opts[:'right_margin'].nil?
      query_params[:'topMargin'] = opts[:'top_margin'] if !opts[:'top_margin'].nil?
      query_params[:'bottomMargin'] = opts[:'bottom_margin'] if !opts[:'bottom_margin'].nil?
      query_params[:'resolution'] = opts[:'resolution'] if !opts[:'resolution'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {
          file: File::open(file,'rb')
      }
      post_body = nil
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#post_convert_document_in_request_to_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Converts the HTML, EPUB, SVG document (in request content) to PDF and uploads resulting file to storage.
#
# @param out_path Full resulting filename (ex. /folder1/folder2/result.pdf)
# @param file A file to be converted.
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting document page width in points (1/96 inch).
# @option opts [Integer] :height Resulting document page height in points (1/96 inch).
# @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
# @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
# @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
# @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def post_convert_document_in_request_to_pdf(out_path, file, opts = {})
      data, _status_code, _headers = post_convert_document_in_request_to_pdf_with_http_info(out_path, file, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Converts the HTML, EPUB, SVG document (in request content) to PDF and uploads resulting file to storage.
#
# @param out_path Full resulting filename (ex. /folder1/folder2/result.pdf)
# @param file A file to be converted.
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting document page width in points (1/96 inch).
# @option opts [Integer] :height Resulting document page height in points (1/96 inch).
# @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
# @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
# @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
# @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def post_convert_document_in_request_to_pdf_with_http_info(out_path, file, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug "Calling API: HtmlApi.post_convert_document_in_request_to_pdf ..."
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling HtmlApi.post_convert_document_in_request_to_pdf"
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling HtmlApi.post_convert_document_in_request_to_pdf"
      end
      # resource path
      local_var_path = "/html/convert/pdf"

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'leftMargin'] = opts[:'left_margin'] if !opts[:'left_margin'].nil?
      query_params[:'rightMargin'] = opts[:'right_margin'] if !opts[:'right_margin'].nil?
      query_params[:'topMargin'] = opts[:'top_margin'] if !opts[:'top_margin'].nil?
      query_params[:'bottomMargin'] = opts[:'bottom_margin'] if !opts[:'bottom_margin'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {
          file: File::open(file,'rb')
      }

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#post_convert_document_in_request_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Converts the HTML, EPUB, SVG document (in request content) to XPS and uploads resulting file to storage.
#
# @param out_path Full resulting filename (ex. /folder1/folder2/result.xps)
# @param file A file to be converted.
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting document page width in points (1/96 inch).
# @option opts [Integer] :height Resulting document page height in points (1/96 inch).
# @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
# @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
# @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
# @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def post_convert_document_in_request_to_xps(out_path, file, opts = {})
      data, _status_code, _headers = post_convert_document_in_request_to_xps_with_http_info(out_path, file, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Converts the HTML, EPUB, SVG document (in request content) to XPS and uploads resulting file to storage.
#
# @param out_path Full resulting filename (ex. /folder1/folder2/result.xps)
# @param file A file to be converted.
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting document page width in points (1/96 inch).
# @option opts [Integer] :height Resulting document page height in points (1/96 inch).
# @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
# @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
# @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
# @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def post_convert_document_in_request_to_xps_with_http_info(out_path, file, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug "Calling API: HtmlApi.post_convert_document_in_request_to_xps ..."
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling HtmlApi.post_convert_document_in_request_to_xps"
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling HtmlApi.post_convert_document_in_request_to_xps"
      end
      # resource path
      local_var_path = "/html/convert/xps"

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'leftMargin'] = opts[:'left_margin'] if !opts[:'left_margin'].nil?
      query_params[:'rightMargin'] = opts[:'right_margin'] if !opts[:'right_margin'].nil?
      query_params[:'topMargin'] = opts[:'top_margin'] if !opts[:'top_margin'].nil?
      query_params[:'bottomMargin'] = opts[:'bottom_margin'] if !opts[:'bottom_margin'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {
          file: File::open(file,'rb')
      }

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#post_convert_document_in_request_to_xps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Converts the HTML, EPUB, SVG document (located on storage) to the specified image format and uploads resulting file to storage.
#
# @param name Document name.
# @param out_path Full resulting filename (ex. /folder1/folder2/result.jpg)
# @param out_format(jpeg, png, bmp, tiff, gif)
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting document page width in points (1/96 inch).
# @option opts [Integer] :height Resulting document page height in points (1/96 inch).
# @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
# @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
# @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
# @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
# @option opts [Integer] :resolution Resolution of resulting image. Default is 96 dpi.
# @option opts [String] :folder The source document folder.
# @option opts [String] :storage The source and resulting document storage.
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def put_convert_document_to_image(name, out_path, out_format, opts = {})
      data, _status_code, _headers = put_convert_document_to_image_with_http_info(name, out_path, out_format, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Converts the HTML, EPUB, SVG document (located on storage) to the specified image format and uploads resulting file to storage.
#
# @param name Document name.
# @param out_path Full resulting filename (ex. /folder1/folder2/result.jpg)
# @param out_format(jpeg, png, bmp, tiff, gif)
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting document page width in points (1/96 inch).
# @option opts [Integer] :height Resulting document page height in points (1/96 inch).
# @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
# @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
# @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
# @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
# @option opts [Integer] :resolution Resolution of resulting image. Default is 96 dpi.
# @option opts [String] :folder The source document folder.
# @option opts [String] :storage The source and resulting document storage.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def put_convert_document_to_image_with_http_info(name, out_path, out_format, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug "Calling API: HtmlApi.put_convert_document_to_image ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling HtmlApi.put_convert_document_to_image"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling HtmlApi.put_convert_document_to_image"
      end
      # verify the required parameter 'out_format' is set
      if @api_client.config.client_side_validation && out_format.nil?
        fail ArgumentError, "Missing the required parameter 'out_format' when calling HtmlApi.put_convert_document_to_image"
      end
      # resource path
      local_var_path = "/html/{name}/convert/image/{outFormat}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'outFormat' + '}', out_format.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'leftMargin'] = opts[:'left_margin'] if !opts[:'left_margin'].nil?
      query_params[:'rightMargin'] = opts[:'right_margin'] if !opts[:'right_margin'].nil?
      query_params[:'topMargin'] = opts[:'top_margin'] if !opts[:'top_margin'].nil?
      query_params[:'bottomMargin'] = opts[:'bottom_margin'] if !opts[:'bottom_margin'].nil?
      query_params[:'resolution'] = opts[:'resolution'] if !opts[:'resolution'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#put_convert_document_to_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Converts the HTML, EPUB, SVG document (located on storage) to PDF and uploads resulting file to storage.
#
# @param name Document name.
# @param out_path Full resulting filename (ex. /folder1/folder2/result.pdf)
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting document page width in points (1/96 inch).
# @option opts [Integer] :height Resulting document page height in points (1/96 inch).
# @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
# @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
# @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
# @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
# @option opts [String] :folder The source document folder.
# @option opts [String] :storage The source and resulting document storage.
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def put_convert_document_to_pdf(name, out_path, opts = {})
      data, _status_code, _headers = put_convert_document_to_pdf_with_http_info(name, out_path, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Converts the HTML, EPUB, SVG document (located on storage) to PDF and uploads resulting file to storage.
#
# @param name Document name.
# @param out_path Full resulting filename (ex. /folder1/folder2/result.pdf)
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting document page width in points (1/96 inch).
# @option opts [Integer] :height Resulting document page height in points (1/96 inch).
# @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
# @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
# @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
# @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
# @option opts [String] :folder The source document folder.
# @option opts [String] :storage The source and resulting document storage.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def put_convert_document_to_pdf_with_http_info(name, out_path, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug "Calling API: HtmlApi.put_convert_document_to_pdf ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling HtmlApi.put_convert_document_to_pdf"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling HtmlApi.put_convert_document_to_pdf"
      end
      # resource path
      local_var_path = "/html/{name}/convert/pdf".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'leftMargin'] = opts[:'left_margin'] if !opts[:'left_margin'].nil?
      query_params[:'rightMargin'] = opts[:'right_margin'] if !opts[:'right_margin'].nil?
      query_params[:'topMargin'] = opts[:'top_margin'] if !opts[:'top_margin'].nil?
      query_params[:'bottomMargin'] = opts[:'bottom_margin'] if !opts[:'bottom_margin'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#put_convert_document_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Converts the HTML, EPUB, SVG document (located on storage) to XPS and uploads resulting file to storage.
#
# @param name Document name.
# @param out_path Full resulting filename (ex. /folder1/folder2/result.xps)
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting document page width in points (1/96 inch).
# @option opts [Integer] :height Resulting document page height in points (1/96 inch).
# @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
# @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
# @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
# @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
# @option opts [String] :folder The source document folder.
# @option opts [String] :storage The source and resulting document storage.
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def put_convert_document_to_xps(name, out_path, opts = {})
      data, _status_code, _headers = put_convert_document_to_xps_with_http_info(name, out_path, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Converts the HTML, EPUB, SVG document (located on storage) to XPS and uploads resulting file to storage.
#
# @param name Document name.
# @param out_path Full resulting filename (ex. /folder1/folder2/result.xps)
# @param [Hash] opts the optional parameters
# @option opts [Integer] :width Resulting document page width in points (1/96 inch).
# @option opts [Integer] :height Resulting document page height in points (1/96 inch).
# @option opts [Integer] :left_margin Left resulting document page margin in points (1/96 inch).
# @option opts [Integer] :right_margin Right resulting document page margin in points (1/96 inch).
# @option opts [Integer] :top_margin Top resulting document page margin in points (1/96 inch).
# @option opts [Integer] :bottom_margin Bottom resulting document page margin in points (1/96 inch).
# @option opts [String] :folder The source document folder.
# @option opts [String] :storage The source and resulting document storage.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def put_convert_document_to_xps_with_http_info(name, out_path, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug "Calling API: HtmlApi.put_convert_document_to_xps ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling HtmlApi.put_convert_document_to_xps"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling HtmlApi.put_convert_document_to_xps"
      end
      # resource path
      local_var_path = "/html/{name}/convert/xps".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'leftMargin'] = opts[:'left_margin'] if !opts[:'left_margin'].nil?
      query_params[:'rightMargin'] = opts[:'right_margin'] if !opts[:'right_margin'].nil?
      query_params[:'topMargin'] = opts[:'top_margin'] if !opts[:'top_margin'].nil?
      query_params[:'bottomMargin'] = opts[:'bottom_margin'] if !opts[:'bottom_margin'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#put_convert_document_to_xps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Converts the HTML page from Web by its URL to MHTML returns resulting file in response content.
# @param source_url Source page URL.
# @param [Hash] opts the optional parameters
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def get_convert_document_to_mhtml_by_url(source_url, opts = {})
      data, _status_code, _headers = get_convert_document_to_mhtml_by_url_with_http_info(source_url, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Converts the HTML page from Web by its URL to MHTML returns resulting file in response content.
# @param source_url Source page URL.
# @param [Hash] opts the optional parameters
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_convert_document_to_mhtml_by_url_with_http_info(source_url, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug 'Calling API: HtmlApi.get_convert_document_to_mhtml_by_url ...'
      end
      # verify the required parameter 'source_url' is set
      if @api_client.config.client_side_validation && source_url.nil?
        fail ArgumentError, "Missing the required parameter 'source_url' when calling HtmlApi.get_convert_document_to_mhtml_by_url"
      end
      # resource path
      local_var_path = '/html/convert/mhtml'

      # query parameters
      query_params = {}
      query_params[:'sourceUrl'] = source_url

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#get_convert_document_to_mhtml_by_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Converts the HTML document (located on storage) to Markdown and returns resulting file in response content.
# @param name Document name.
# @param [Hash] opts the optional parameters
# @option opts [String] :use_git Use Git Markdown flavor to save ("true" or "false"). (default to "false")
# @option opts [String] :folder Source document folder.
# @option opts [String] :storage Source document storage.
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def get_convert_document_to_markdown(name, opts = {})
      data, _status_code, _headers = get_convert_document_to_markdown_with_http_info(name, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Converts the HTML document (located on storage) to Markdown and returns resulting file in response content.
# @param name Document name.
# @param [Hash] opts the optional parameters
# @option opts [String] :use_git Use Git Markdown flavor to save ("true" or "false"). (default to "false")
# @option opts [String] :folder Source document folder.
# @option opts [String] :storage Source document storage.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_convert_document_to_markdown_with_http_info(name, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug 'Calling API: HtmlApi.get_convert_document_to_markdown ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling HtmlApi.get_convert_document_to_markdown"
      end
      # resource path
      local_var_path = '/html/{name}/convert/md'.sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'useGit'] = opts[:'use_git'] if !opts[:'use_git'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#get_convert_document_to_markdown\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Converts the HTML document (in request content) to Markdown and uploads resulting file to storage by specified path.
# @param out_path Full resulting file path in the storage (ex. /folder1/folder2/result.md)
# @param file A file to be converted.
# @param [Hash] opts the optional parameters
# @option opts [String] :use_git Use Git Markdown flavor to save ("true" or "false"). (default to "false")
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def post_convert_document_in_request_to_markdown(out_path, file, opts = {})
      data, _status_code, _headers = post_convert_document_in_request_to_markdown_with_http_info(out_path, file, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Converts the HTML document (in request content) to Markdown and uploads resulting file to storage by specified path.
# @param out_path Full resulting file path in the storage (ex. /folder1/folder2/result.md)
# @param file A file to be converted.
# @param [Hash] opts the optional parameters
# @option opts [String] :use_git Use Git Markdown flavor to save ("true" or "false"). (default to "false")
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def post_convert_document_in_request_to_markdown_with_http_info(out_path, file, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug 'Calling API: HtmlApi.post_convert_document_in_request_to_markdown ...'
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling HtmlApi.post_convert_document_in_request_to_markdown"
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling HtmlApi.post_convert_document_in_request_to_markdown"
      end
      # resource path
      local_var_path = '/html/convert/md'

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'useGit'] = opts[:'use_git'] if !opts[:'use_git'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {
          file: File::open(file,'rb')
      }

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#put_convert_document_in_request_to_markdown\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Converts the HTML document (located on storage) to Markdown and uploads resulting file to storage by specified path.
# @param name Document name.
# @param out_path Full resulting file path in the storage (ex. /folder1/folder2/result.md)
# @param [Hash] opts the optional parameters
# @option opts [String] :use_git Use Git Markdown flavor to save ("true" or "false"). (default to "false")
# @option opts [String] :folder The source document folder.
# @option opts [String] :storage The source and resulting document storage.
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def put_convert_document_to_markdown(name, out_path, opts = {})
      data, _status_code, _headers = put_convert_document_to_markdown_with_http_info(name, out_path, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Converts the HTML document (located on storage) to Markdown and uploads resulting file to storage by specified path.
# @param name Document name.
# @param out_path Full resulting file path in the storage (ex. /folder1/folder2/result.md)
# @param [Hash] opts the optional parameters
# @option opts [String] :use_git Use Git Markdown flavor to save ("true" or "false"). (default to "false")
# @option opts [String] :folder The source document folder.
# @option opts [String] :storage The source and resulting document storage.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def put_convert_document_to_markdown_with_http_info(name, out_path, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug 'Calling API: HtmlApi.put_convert_document_to_markdown ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling HtmlApi.put_convert_document_to_markdown"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling HtmlApi.put_convert_document_to_markdown"
      end
      # resource path
      local_var_path = '/html/{name}/convert/md'.sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'useGit'] = opts[:'use_git'] if !opts[:'use_git'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#put_convert_document_to_markdown\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

################################################################################
#                           Import Api
################################################################################

# Converts the Markdown document (located on storage) to HTML and returns resulting file in response content.
# @param name Document name.
# @param [Hash] opts the optional parameters
# @option opts [String] :folder Source document folder.
# @option opts [String] :storage Source document storage.
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def get_convert_markdown_to_html(name, opts = {})
      data, _status_code, _headers = get_convert_markdown_to_html_with_http_info(name, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Converts the Markdown document (located on storage) to HTML and returns resulting file in response content.
# @param name Document name.
# @param [Hash] opts the optional parameters
# @option opts [String] :folder Source document folder.
# @option opts [String] :storage Source document storage.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_convert_markdown_to_html_with_http_info(name, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug 'Calling API: HtmlApi.get_convert_markdown_to_html ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling HtmlApi.get_convert_markdown_to_html"
      end
      # resource path
      local_var_path = '/html/{name}/import/md'.sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#get_convert_markdown_to_html\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Converts the Markdown document (in request content) to HTML and uploads resulting file to storage by specified path.
# @param out_path Full resulting file path in the storage (ex. /folder1/folder2/result.html)
# @param file A file to be converted.
# @param [Hash] opts the optional parameters
# @option opts [String] :storage Source document storage.
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def post_convert_markdown_in_request_to_html(out_path, file, opts = {})
      data, _status_code, _headers = post_convert_markdown_in_request_to_html_with_http_info(out_path, file, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Converts the Markdown document (in request content) to HTML and uploads resulting file to storage by specified path.
# @param out_path Full resulting file path in the storage (ex. /folder1/folder2/result.html)
# @param file A file to be converted.
# @param [Hash] opts the optional parameters
# @option opts [String] :storage Source document storage.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def post_convert_markdown_in_request_to_html_with_http_info(out_path, file, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug 'Calling API: HtmlApi.post_convert_markdown_in_request_to_html ...'
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling HtmlApi.post_convert_markdown_in_request_to_html"
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling HtmlApi.post_convert_markdown_in_request_to_html"
      end
      # resource path
      local_var_path = '/html/import/md'

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {
          file: File::open(file,'rb')
      }

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#put_convert_markdown_in_request_to_html\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Converts the Markdown document (located on storage) to HTML and uploads resulting file to storage by specified path.
# @param name Document name.
# @param out_path Full resulting file path in the storage (ex. /folder1/folder2/result.html)
# @param [Hash] opts the optional parameters
# @option opts [String] :folder The source document folder.
# @option opts [String] :storage The source and resulting document storage.
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def put_convert_markdown_to_html(name, out_path, opts = {})
      data, _status_code, _headers = put_convert_markdown_to_html_with_http_info(name, out_path, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Converts the Markdown document (located on storage) to HTML and uploads resulting file to storage by specified path.
# @param name Document name.
# @param out_path Full resulting file path in the storage (ex. /folder1/folder2/result.html)
# @param [Hash] opts the optional parameters
# @option opts [String] :folder The source document folder.
# @option opts [String] :storage The source and resulting document storage.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def put_convert_markdown_to_html_with_http_info(name, out_path, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug 'Calling API: HtmlApi.put_convert_markdown_to_html ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling HtmlApi.put_convert_markdown_to_html"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling HtmlApi.put_convert_markdown_to_html"
      end
      # resource path
      local_var_path = '/html/{name}/import/md'.sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#put_convert_markdown_to_html\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

################################################################################
#                             Document Api
################################################################################

# Return all HTML page with linked resources packaged as a ZIP archive by the source page URL.
#
# @param source_url Source page URL.
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def get_document_by_url(source_url)
      data, _status_code, _headers = get_document_by_url_with_http_info(source_url)
      return {file: data, status: _status_code, headers: _headers}
    end

# Return all HTML page with linked resources packaged as a ZIP archive by the source page URL.
#
# @param source_url Source page URL.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_document_by_url_with_http_info(source_url)
      if @api_client.config.debug
        @api_client.config.logger.debug 'Calling API: `HtmlApi.get_document_by_url ...'
      end
      # verify the required parameter 'source_url' is set
      if @api_client.config.client_side_validation && source_url.nil?
        fail ArgumentError, "Missing the required parameter 'source_url' when calling HtmlApi.get_document_by_url"
      end
      # resource path
      local_var_path = '/html/download'

      # query parameters
      query_params = {}
      query_params[:'sourceUrl'] = source_url

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/zip'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#get_document_by_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Return list of HTML fragments matching the specified XPath query.
# @param name The document name.
# @param x_path XPath query string.
# @param out_format Output format. Possible values: &#39;plain&#39; and &#39;json&#39;.
# @param [Hash] opts the optional parameters
# @option opts [String] :storage The document storage.
# @option opts [String] :folder The document folder.
# @return [File]
    def document_get_document_fragment_by_x_path(name, x_path, out_format, opts = {})
      data, _status_code, _headers = document_get_document_fragment_by_x_path_with_http_info(name, x_path, out_format, opts)
      data
    end


# Return list of HTML fragments matching the specified XPath query.
#
# @param name The document name.
# @param x_path XPath query string.
# @param out_format Output format. Possible values: &#39;plain&#39; and &#39;json&#39;.
# @param [Hash] opts the optional parameters
# @option opts [String] :storage The document storage.
# @option opts [String] :folder The document folder.
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def get_document_fragment_by_x_path(name, x_path, out_format, opts = {})
      data, _status_code, _headers = get_document_fragment_by_x_path_with_http_info(name, x_path, out_format, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Return list of HTML fragments matching the specified XPath query.
#
# @param name The document name.
# @param x_path XPath query string.
# @param out_format Output format. Possible values: &#39;plain&#39; and &#39;json&#39;.
# @param [Hash] opts the optional parameters
# @option opts [String] :storage The document storage.
# @option opts [String] :folder The document folder.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_document_fragment_by_x_path_with_http_info(name, x_path, out_format, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug "Calling API: HtmlApi.get_document_fragment_by_x_path ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling HtmlApi.get_document_fragment_by_x_path"
      end
      # verify the required parameter 'x_path' is set
      if @api_client.config.client_side_validation && x_path.nil?
        fail ArgumentError, "Missing the required parameter 'x_path' when calling HtmlApi.get_document_fragment_by_x_path"
      end
      # verify the required parameter 'out_format' is set
      if @api_client.config.client_side_validation && out_format.nil?
        fail ArgumentError, "Missing the required parameter 'out_format' when calling HtmlApi.get_document_fragment_by_x_path"
      end
      # resource path
      local_var_path = "/html/{name}/fragments/{outFormat}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'outFormat' + '}', out_format.to_s)

      # query parameters
      query_params = {}
      query_params[:'xPath'] = x_path
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#get_document_fragment_by_x_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Return list of HTML fragments matching the specified XPath query by the source page URL.
#
# @param source_url Source page URL.
# @param x_path XPath query string.
# @param out_format Output format. Possible values: &#39;plain&#39; and &#39;json&#39;.
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def get_document_fragment_by_x_path_by_url(source_url, x_path, out_format)
      data, _status_code, _headers = get_document_fragment_by_x_path_by_url_with_http_info(source_url, x_path, out_format)
      return {file: data, status: _status_code, headers: _headers}
    end

# Return list of HTML fragments matching the specified XPath query by the source page URL.
#
# @param source_url Source page URL.
# @param x_path XPath query string.
# @param out_format Output format. Possible values: &#39;plain&#39; and &#39;json&#39;.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_document_fragment_by_x_path_by_url_with_http_info(source_url, x_path, out_format)
      if @api_client.config.debug
        @api_client.config.logger.debug "Calling API: HtmlApi.get_document_fragment_by_x_path_by_url ..."
      end
      # verify the required parameter 'source_url' is set
      if @api_client.config.client_side_validation && source_url.nil?
        fail ArgumentError, "Missing the required parameter 'source_url' when calling HtmlApi.get_document_fragment_by_x_path_by_url"
      end
      # verify the required parameter 'x_path' is set
      if @api_client.config.client_side_validation && x_path.nil?
        fail ArgumentError, "Missing the required parameter 'x_path' when calling HtmlApi.get_document_fragment_by_x_path_by_url"
      end
      # verify the required parameter 'out_format' is set
      if @api_client.config.client_side_validation && out_format.nil?
        fail ArgumentError, "Missing the required parameter 'out_format' when calling HtmlApi.get_document_fragment_by_x_path_by_url"
      end
      # resource path
      local_var_path = "/html/fragments/{outFormat}".sub('{' + 'outFormat' + '}', out_format.to_s)

      # query parameters
      query_params = {}
      query_params[:'sourceUrl'] = source_url
      query_params[:'xPath'] = x_path

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/zip'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#get_document_fragment_by_x_path_by_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Return list of HTML fragments matching the specified CSS selector.
#
# @param name The document name.
# @param selector CSS selector string.
# @param out_format Output format. Possible values: &#39;plain&#39; and &#39;json&#39;.
# @param [Hash] opts the optional parameters
# @option opts [String] :folder The document folder.
# @option opts [String] :storage The document storage.
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def get_document_fragments_by_css_selector(name, selector, out_format, opts = {})
      data, _status_code, _headers = get_document_fragments_by_css_selector_with_http_info(name, selector, out_format, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Return list of HTML fragments matching the specified CSS selector.
#
# @param name The document name.
# @param selector CSS selector string.
# @param out_format Output format. Possible values: &#39;plain&#39; and &#39;json&#39;.
# @param [Hash] opts the optional parameters
# @option opts [String] :folder The document folder.
# @option opts [String] :storage The document storage.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_document_fragments_by_css_selector_with_http_info(name, selector, out_format, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug "Calling API: HtmlApi.get_document_fragments_by_css_selector ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling HtmlApi.get_document_fragments_by_css_selector"
      end
      # verify the required parameter 'selector' is set
      if @api_client.config.client_side_validation && selector.nil?
        fail ArgumentError, "Missing the required parameter 'selector' when calling HtmlApi.get_document_fragments_by_css_selector"
      end
      # verify the required parameter 'out_format' is set
      if @api_client.config.client_side_validation && out_format.nil?
        fail ArgumentError, "Missing the required parameter 'out_format' when calling HtmlApi.get_document_fragments_by_css_selector"
      end
      # resource path
      local_var_path = "/html/{name}/fragments/css/{outFormat}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'outFormat' + '}', out_format.to_s)

      # query parameters
      query_params = {}
      query_params[:'selector'] = selector
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#get_document_fragments_by_css_selector\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Return list of HTML fragments matching the specified CSS selector by the source page URL.
#
# @param source_url Source page URL.
# @param selector CSS selector string.
# @param out_format Output format. Possible values: &#39;plain&#39; and &#39;json&#39;.
# @param [Hash] opts the optional parameters
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def get_document_fragments_by_css_selector_by_url(source_url, selector, out_format, opts = {})
      data, _status_code, _headers = get_document_fragments_by_css_selector_by_url_with_http_info(source_url, selector, out_format, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Return list of HTML fragments matching the specified CSS selector by the source page URL.
#
# @param source_url Source page URL.
# @param selector CSS selector string.
# @param out_format Output format. Possible values: &#39;plain&#39; and &#39;json&#39;.
# @param [Hash] opts the optional parameters
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_document_fragments_by_css_selector_by_url_with_http_info(source_url, selector, out_format, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug "Calling API: HtmlApi.get_document_fragments_by_css_selector_by_url ..."
      end
      # verify the required parameter 'source_url' is set
      if @api_client.config.client_side_validation && source_url.nil?
        fail ArgumentError, "Missing the required parameter 'source_url' when calling HtmlApi.get_document_fragments_by_css_selector_by_url"
      end
      # verify the required parameter 'selector' is set
      if @api_client.config.client_side_validation && selector.nil?
        fail ArgumentError, "Missing the required parameter 'selector' when calling HtmlApi.get_document_fragments_by_css_selector_by_url"
      end
      # verify the required parameter 'out_format' is set
      if @api_client.config.client_side_validation && out_format.nil?
        fail ArgumentError, "Missing the required parameter 'out_format' when calling HtmlApi.get_document_fragments_by_css_selector_by_url"
      end
      # resource path
      local_var_path = "/html/fragments/css/{outFormat}".sub('{' + 'outFormat' + '}', out_format.to_s)

      # query parameters
      query_params = {}
      query_params[:'sourceUrl'] = source_url
      query_params[:'selector'] = selector

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#get_document_fragments_by_css_selector_by_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Return all HTML document images packaged as a ZIP archive.
#
# @param name The document name.
# @param [Hash] opts the optional parameters
# @option opts [String] :folder The document folder.
# @option opts [String] :storage The document storage.
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def get_document_images(name, opts = {})
      data, _status_code, _headers = get_document_images_with_http_info(name, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Return all HTML document images packaged as a ZIP archive.
#
# @param name The document name.
# @param [Hash] opts the optional parameters
# @option opts [String] :folder The document folder.
# @option opts [String] :storage The document storage.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_document_images_with_http_info(name, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug "Calling API: HtmlApi.get_document_images ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling HtmlApi.get_document_images"
      end
      # resource path
      local_var_path = "/html/{name}/images/all".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/zip'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#get_document_images\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


# Return all HTML page images packaged as a ZIP archive by the source page URL.
#
# @param source_url Source page URL.
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def get_document_images_by_url(source_url)
      data, _status_code, _headers = get_document_images_by_url_with_http_info(source_url)
      return {file: data, status: _status_code, headers: _headers}
    end

# Return all HTML page images packaged as a ZIP archive by the source page URL.
#
# @param source_url Source page URL.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_document_images_by_url_with_http_info(source_url)
      if @api_client.config.debug
        @api_client.config.logger.debug "Calling API: HtmlApi.get_document_images_by_url ..."
      end
      # verify the required parameter 'source_url' is set
      if @api_client.config.client_side_validation && source_url.nil?
        fail ArgumentError, "Missing the required parameter 'source_url' when calling HtmlApi.get_document_images_by_url"
      end
      # resource path
      local_var_path = "/html/images/all"

      # query parameters
      query_params = {}
      query_params[:'sourceUrl'] = source_url

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/zip'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#get_document_images_by_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

################################################################################
#                                SEO Api
################################################################################

# Page analysis and return of SEO warnings in json format.
#
# @param addr Source page URL.
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def get_seo_warning(addr)
      data, _status_code, _headers = get_seo_warning_with_http_info(addr)
      return {file: data, status: _status_code, headers: _headers}
    end

# Page analysis and return of SEO warnings in json format.
#
# @param addr Source page URL.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_seo_warning_with_http_info(addr)
      if @api_client.config.debug
        @api_client.config.logger.debug "Calling API: HtmlApi.get_seo_warning ..."
      end
      # verify the required parameter 'addr' is set
      if @api_client.config.client_side_validation && addr.nil?
        fail ArgumentError, "Missing the required parameter 'addr' when calling HtmlApi.get_seo_warning"
      end
      # resource path
      local_var_path = "/html/seo"

      # query parameters
      query_params = {}
      query_params[:'addr'] = addr

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#get_seo_warning\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Checks the markup validity of Web documents in HTML, XHTML, etc., and return result in json format.
#
# @param url Source page URL.
# @return [Hash] {file: data, status: _status_code, headers: _headers}
    def get_html_warning(url)
      data, _status_code, _headers = get_html_warning_with_http_info(url)
      return {file: data, status: _status_code, headers: _headers}
    end

# Checks the markup validity of Web documents in HTML, XHTML, etc., and return result in json format.
#
# @param url Source page URL.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_html_warning_with_http_info(url)
      if @api_client.config.debug
        @api_client.config.logger.debug "Calling API: HtmlApi.get_html_warning ..."
      end
      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling HtmlApi.get_html_warning"
      end
      # resource path
      local_var_path = "/html/validator"

      # query parameters
      query_params = {}
      query_params[:'url'] = url

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#get_html_warning\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

################################################################################
#                         TemplateMerge Api
################################################################################

# Populate HTML document template with data located as a file in the storage.
#
# @param template_name Template document name. Template document is HTML or zipped HTML.
# @param data_path Data source file path in the storage. Supported data format: XML
# @param [Hash] opts the optional parameters
# @option opts [String] :options Template merge options: reserved for further implementation.
# @option opts [String] :folder The template document folder.
# @option opts [String] :storage The template document and data source storage.
# @return [File]
    def get_merge_html_template(template_name, data_path, opts = {})
      data, _status_code, _headers = get_merge_html_template_with_http_info(template_name, data_path, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Populate HTML document template with data located as a file in the storage.
#
# @param template_name Template document name. Template document is HTML or zipped HTML.
# @param data_path Data source file path in the storage. Supported data format: XML
# @param [Hash] opts the optional parameters
# @option opts [String] :options Template merge options: reserved for further implementation.
# @option opts [String] :folder The template document folder.
# @option opts [String] :storage The template document and data source storage.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_merge_html_template_with_http_info(template_name, data_path, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug "Calling API: HtmlApi.get_merge_html_template ..."
      end
      # verify the required parameter 'template_name' is set
      if @api_client.config.client_side_validation && template_name.nil?
        fail ArgumentError, "Missing the required parameter 'template_name' when calling HtmlApi.get_merge_html_template"
      end
      # verify the required parameter 'data_path' is set
      if @api_client.config.client_side_validation && data_path.nil?
        fail ArgumentError, "Missing the required parameter 'data_path' when calling HtmlApi.get_merge_html_template"
      end
      # resource path
      local_var_path = "/html/{templateName}/merge".sub('{' + 'templateName' + '}', template_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'dataPath'] = data_path
      query_params[:'options'] = opts[:'options'] if !opts[:'options'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#get_merge_html_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

# Populate HTML document template with data from the request body. Result document will be saved to storage.
#
# @param template_name Template document name. Template document is HTML or zipped HTML.
# @param out_path Result document path.
# @param file A data file to populate template.
# @param [Hash] opts the optional parameters
# @option opts [String] :options Template merge options: reserved for further implementation.
# @option opts [String] :folder The template document folder.
# @option opts [String] :storage The template document and data source storage.
# @return [File]
    def post_merge_html_template(template_name, out_path, file, opts = {})
      data, _status_code, _headers = post_merge_html_template_with_http_info(template_name, out_path, file, opts)
      return {file: data, status: _status_code, headers: _headers}
    end

# Populate HTML document template with data from the request body. Result document will be saved to storage.
#
# @param template_name Template document name. Template document is HTML or zipped HTML.
# @param out_path Result document path.
# @param file A data file to populate template.
# @param [Hash] opts the optional parameters
# @option opts [String] :options Template merge options: reserved for further implementation.
# @option opts [String] :folder The template document folder.
# @option opts [String] :storage The template document and data source storage.
# @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def post_merge_html_template_with_http_info(template_name, out_path, file, opts = {})
      if @api_client.config.debug
        @api_client.config.logger.debug "Calling API: HtmlApi.post_merge_html_template ..."
      end
      # verify the required parameter 'template_name' is set
      if @api_client.config.client_side_validation && template_name.nil?
        fail ArgumentError, "Missing the required parameter 'template_name' when calling HtmlApi.post_merge_html_template"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling HtmlApi.post_merge_html_template"
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling HtmlApi.post_merge_html_template"
      end
      # resource path
      local_var_path = "/html/{templateName}/merge".sub('{' + 'templateName' + '}', template_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'options'] = opts[:'options'] if !opts[:'options'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {
          file: File::open(file,'rb')
      }

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        :header_params => header_params,
                                                        :query_params => query_params,
                                                        :form_params => form_params,
                                                        :body => post_body,
                                                        :return_type => 'File')
      if @api_client.config.debug
        @api_client.config.logger.debug "API called: HtmlApi#post_merge_html_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end