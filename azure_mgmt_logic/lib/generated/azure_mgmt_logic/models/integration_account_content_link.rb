# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # Model object.
    #
    class IntegrationAccountContentLink

      include MsRestAzure

      # @return [String] The content link URI.
      attr_accessor :uri

      # @return [String] The content version.
      attr_accessor :content_version

      # @return [Integer] The content size.
      attr_accessor :content_size

      # @return [IntegrationAccountContentHash] The content hash.
      attr_accessor :content_hash

      # @return The metadata.
      attr_accessor :metadata


      #
      # Mapper for IntegrationAccountContentLink class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'IntegrationAccountContentLink',
          type: {
            name: 'Composite',
            class_name: 'IntegrationAccountContentLink',
            model_properties: {
              uri: {
                required: false,
                serialized_name: 'uri',
                type: {
                  name: 'String'
                }
              },
              content_version: {
                required: false,
                serialized_name: 'contentVersion',
                type: {
                  name: 'String'
                }
              },
              content_size: {
                required: false,
                serialized_name: 'contentSize',
                type: {
                  name: 'Number'
                }
              },
              content_hash: {
                required: false,
                serialized_name: 'contentHash',
                type: {
                  name: 'Composite',
                  class_name: 'IntegrationAccountContentHash'
                }
              },
              metadata: {
                required: false,
                serialized_name: 'metadata',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
