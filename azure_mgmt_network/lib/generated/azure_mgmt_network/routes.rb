# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  #
  # The Microsoft Azure Network management API provides a RESTful set of web
  # services that interact with Microsoft Azure Networks service to manage
  # your network resrources. The API has entities that capture the
  # relationship between an end user and the Microsoft Azure Networks service.
  #
  class Routes
    include Azure::ARM::Network::Models
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Routes class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return reference to the NetworkManagementClient
    attr_reader :client

    #
    # The delete route operation deletes the specified route from a route table.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param route_table_name [String] The name of the route table.
    # @param route_name [String] The name of the route.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def delete(resource_group_name, route_table_name, route_name, custom_headers = nil)
      response = delete_async(resource_group_name, route_table_name, route_name, custom_headers).value!
      nil
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param route_table_name [String] The name of the route table.
    # @param route_name [String] The name of the route.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_async(resource_group_name, route_table_name, route_name, custom_headers = nil)
      # Send request
      promise = begin_delete_async(resource_group_name, route_table_name, route_name, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # The delete route operation deletes the specified route from a route table.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param route_table_name [String] The name of the route table.
    # @param route_name [String] The name of the route.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_delete(resource_group_name, route_table_name, route_name, custom_headers = nil)
      response = begin_delete_async(resource_group_name, route_table_name, route_name, custom_headers).value!
      nil
    end

    #
    # The delete route operation deletes the specified route from a route table.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param route_table_name [String] The name of the route table.
    # @param route_name [String] The name of the route.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_with_http_info(resource_group_name, route_table_name, route_name, custom_headers = nil)
      begin_delete_async(resource_group_name, route_table_name, route_name, custom_headers).value!
    end

    #
    # The delete route operation deletes the specified route from a route table.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param route_table_name [String] The name of the route table.
    # @param route_name [String] The name of the route.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_async(resource_group_name, route_table_name, route_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'route_table_name is nil' if route_table_name.nil?
      fail ArgumentError, 'route_name is nil' if route_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/routeTables/{routeTableName}/routes/{routeName}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'routeTableName' => route_table_name,'routeName' => route_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :delete, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 202 || status_code == 200 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # The Get route operation retreives information about the specified route from
    # the route table.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param route_table_name [String] The name of the route table.
    # @param route_name [String] The name of the route.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Route] operation results.
    #
    def get(resource_group_name, route_table_name, route_name, custom_headers = nil)
      response = get_async(resource_group_name, route_table_name, route_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # The Get route operation retreives information about the specified route from
    # the route table.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param route_table_name [String] The name of the route table.
    # @param route_name [String] The name of the route.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, route_table_name, route_name, custom_headers = nil)
      get_async(resource_group_name, route_table_name, route_name, custom_headers).value!
    end

    #
    # The Get route operation retreives information about the specified route from
    # the route table.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param route_table_name [String] The name of the route table.
    # @param route_name [String] The name of the route.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, route_table_name, route_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'route_table_name is nil' if route_table_name.nil?
      fail ArgumentError, 'route_name is nil' if route_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/routeTables/{routeTableName}/routes/{routeName}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'routeTableName' => route_table_name,'routeName' => route_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Route.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # The Put route operation creates/updates a route in the specified route table
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param route_table_name [String] The name of the route table.
    # @param route_name [String] The name of the route.
    # @param route_parameters [Route] Parameters supplied to the create/update
    # routeoperation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Route] operation results.
    #
    def create_or_update(resource_group_name, route_table_name, route_name, route_parameters, custom_headers = nil)
      response = create_or_update_async(resource_group_name, route_table_name, route_name, route_parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param route_table_name [String] The name of the route table.
    # @param route_name [String] The name of the route.
    # @param route_parameters [Route] Parameters supplied to the create/update
    # routeoperation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_or_update_async(resource_group_name, route_table_name, route_name, route_parameters, custom_headers = nil)
      # Send request
      promise = begin_create_or_update_async(resource_group_name, route_table_name, route_name, route_parameters, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Route.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response, 'parsed_response')
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # The Put route operation creates/updates a route in the specified route table
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param route_table_name [String] The name of the route table.
    # @param route_name [String] The name of the route.
    # @param route_parameters [Route] Parameters supplied to the create/update
    # routeoperation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Route] operation results.
    #
    def begin_create_or_update(resource_group_name, route_table_name, route_name, route_parameters, custom_headers = nil)
      response = begin_create_or_update_async(resource_group_name, route_table_name, route_name, route_parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # The Put route operation creates/updates a route in the specified route table
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param route_table_name [String] The name of the route table.
    # @param route_name [String] The name of the route.
    # @param route_parameters [Route] Parameters supplied to the create/update
    # routeoperation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_or_update_with_http_info(resource_group_name, route_table_name, route_name, route_parameters, custom_headers = nil)
      begin_create_or_update_async(resource_group_name, route_table_name, route_name, route_parameters, custom_headers).value!
    end

    #
    # The Put route operation creates/updates a route in the specified route table
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param route_table_name [String] The name of the route table.
    # @param route_name [String] The name of the route.
    # @param route_parameters [Route] Parameters supplied to the create/update
    # routeoperation
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_or_update_async(resource_group_name, route_table_name, route_name, route_parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'route_table_name is nil' if route_table_name.nil?
      fail ArgumentError, 'route_name is nil' if route_name.nil?
      fail ArgumentError, 'route_parameters is nil' if route_parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Route.mapper()
      request_content = @client.serialize(request_mapper,  route_parameters, 'route_parameters')
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/routeTables/{routeTableName}/routes/{routeName}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'routeTableName' => route_table_name,'routeName' => route_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :put, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Route.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Route.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # The List network security rule opertion retrieves all the routes in a route
    # table.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param route_table_name [String] The name of the route table.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RouteListResult] which provide lazy access to pages of the response.
    #
    def list_as_lazy(resource_group_name, route_table_name, custom_headers = nil)
      response = list_async(resource_group_name, route_table_name, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_link|
          list_next_async(next_link, custom_headers)
        end
        page
      end
    end

    #
    # The List network security rule opertion retrieves all the routes in a route
    # table.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param route_table_name [String] The name of the route table.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<Route>] operation results.
    #
    def list(resource_group_name, route_table_name, custom_headers = nil)
      first_page = list_as_lazy(resource_group_name, route_table_name, custom_headers)
      first_page.get_all_items
    end

    #
    # The List network security rule opertion retrieves all the routes in a route
    # table.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param route_table_name [String] The name of the route table.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, route_table_name, custom_headers = nil)
      list_async(resource_group_name, route_table_name, custom_headers).value!
    end

    #
    # The List network security rule opertion retrieves all the routes in a route
    # table.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param route_table_name [String] The name of the route table.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, route_table_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'route_table_name is nil' if route_table_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/routeTables/{routeTableName}/routes'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'routeTableName' => route_table_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = RouteListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # The List network security rule opertion retrieves all the routes in a route
    # table.
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RouteListResult] operation results.
    #
    def list_next(next_page_link, custom_headers = nil)
      response = list_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # The List network security rule opertion retrieves all the routes in a route
    # table.
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers = nil)
      list_next_async(next_page_link, custom_headers).value!
    end

    #
    # The List network security rule opertion retrieves all the routes in a route
    # table.
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers = nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = RouteListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
