# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MediaServices
  module Models
    #
    # The response body for a ListKeys API.
    #
    class ServiceKeys

      include MsRestAzure

      # @return [String] The primary Authorization endpoint.
      attr_accessor :primary_auth_endpoint

      # @return [String] The secondary Authorization endpoint.
      attr_accessor :secondary_auth_endpoint

      # @return [String] The primary resource.
      attr_accessor :primary_key

      # @return [String] The secondary resource.
      attr_accessor :secondary_key

      # @return [String] The authorization scope.
      attr_accessor :scope


      #
      # Mapper for ServiceKeys class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ServiceKeys',
          type: {
            name: 'Composite',
            class_name: 'ServiceKeys',
            model_properties: {
              primary_auth_endpoint: {
                required: false,
                serialized_name: 'primaryAuthEndpoint',
                type: {
                  name: 'String'
                }
              },
              secondary_auth_endpoint: {
                required: false,
                serialized_name: 'secondaryAuthEndpoint',
                type: {
                  name: 'String'
                }
              },
              primary_key: {
                required: false,
                serialized_name: 'primaryKey',
                type: {
                  name: 'String'
                }
              },
              secondary_key: {
                required: false,
                serialized_name: 'secondaryKey',
                type: {
                  name: 'String'
                }
              },
              scope: {
                required: false,
                serialized_name: 'scope',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
