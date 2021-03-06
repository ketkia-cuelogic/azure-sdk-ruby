# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeStore::FileSystem
  module Models
    #
    # Data Lake Store content summary information
    #
    class ContentSummary

      include MsRestAzure

      # @return [Integer] the number of directories.
      attr_accessor :directory_count

      # @return [Integer] the number of files.
      attr_accessor :file_count

      # @return [Integer] the number of bytes used by the contet.
      attr_accessor :length

      # @return [Integer] the disk space consumed by the content.
      attr_accessor :space_consumed


      #
      # Mapper for ContentSummary class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContentSummary',
          type: {
            name: 'Composite',
            class_name: 'ContentSummary',
            model_properties: {
              directory_count: {
                required: false,
                read_only: true,
                serialized_name: 'directoryCount',
                type: {
                  name: 'Number'
                }
              },
              file_count: {
                required: false,
                read_only: true,
                serialized_name: 'fileCount',
                type: {
                  name: 'Number'
                }
              },
              length: {
                required: false,
                read_only: true,
                serialized_name: 'length',
                type: {
                  name: 'Number'
                }
              },
              space_consumed: {
                required: false,
                read_only: true,
                serialized_name: 'spaceConsumed',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
