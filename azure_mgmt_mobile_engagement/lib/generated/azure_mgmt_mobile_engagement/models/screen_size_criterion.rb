# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Used to target devices based on the screen resolution of their device.
    #
    class ScreenSizeCriterion < Criterion

      include MsRestAzure


      def initialize
        @type = "screen-size"
      end

      attr_accessor :type

      # @return [String] Screen size using the following format
      # WIDTH**x**HEIGHT.
      attr_accessor :name


      #
      # Mapper for ScreenSizeCriterion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'screen-size',
          type: {
            name: 'Composite',
            class_name: 'ScreenSizeCriterion',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
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
