# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeAnalytics::Catalog
  module Models
    #
    # A Data Lake Analytics catalog U-SQL procedure item.
    #
    class USqlProcedure < CatalogItem

      include MsRestAzure

      # @return [String] the name of the database.
      attr_accessor :database_name

      # @return [String] the name of the schema associated with this procedure
      # and database.
      attr_accessor :schema_name

      # @return [String] the name of the procedure.
      attr_accessor :name

      # @return [String] the defined query of the procedure.
      attr_accessor :definition


      #
      # Mapper for USqlProcedure class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'USqlProcedure',
          type: {
            name: 'Composite',
            class_name: 'USqlProcedure',
            model_properties: {
              compute_account_name: {
                required: false,
                serialized_name: 'computeAccountName',
                type: {
                  name: 'String'
                }
              },
              version: {
                required: false,
                serialized_name: 'version',
                type: {
                  name: 'String'
                }
              },
              database_name: {
                required: false,
                serialized_name: 'databaseName',
                type: {
                  name: 'String'
                }
              },
              schema_name: {
                required: false,
                serialized_name: 'schemaName',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'procName',
                type: {
                  name: 'String'
                }
              },
              definition: {
                required: false,
                serialized_name: 'definition',
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
