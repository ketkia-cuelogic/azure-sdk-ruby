# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeAnalytics::Job
  module Models
    #
    # The Data Lake Analytics job error details.
    #
    class JobInnerError

      include MsRestAzure

      # @return [Integer] the diagnostic error code.
      attr_accessor :diagnostic_code

      # @return [SeverityTypes] the severity level of the failure. Possible
      # values include: 'Warning', 'Error', 'Info'
      attr_accessor :severity

      # @return [String] the details of the error message.
      attr_accessor :details

      # @return [String] the component that failed.
      attr_accessor :component

      # @return [String] the specific identifier for the type of error
      # encountered in the job.
      attr_accessor :error_id

      # @return [String] the link to MSDN or Azure help for this type of
      # error, if any.
      attr_accessor :help_link

      # @return [String] the internal diagnostic stack trace if the user
      # requesting the job error details has sufficient permissions it will
      # be retrieved, otherwise it will be empty.
      attr_accessor :internal_diagnostics

      # @return [String] the user friendly error message for the failure.
      attr_accessor :message

      # @return [String] the recommended resolution for the failure, if any.
      attr_accessor :resolution

      # @return [String] the ultimate source of the failure (usually either
      # SYSTEM or USER).
      attr_accessor :source

      # @return [String] the error message description
      attr_accessor :description


      #
      # Mapper for JobInnerError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobInnerError',
          type: {
            name: 'Composite',
            class_name: 'JobInnerError',
            model_properties: {
              diagnostic_code: {
                required: false,
                read_only: true,
                serialized_name: 'diagnosticCode',
                type: {
                  name: 'Number'
                }
              },
              severity: {
                required: false,
                read_only: true,
                serialized_name: 'severity',
                type: {
                  name: 'Enum',
                  module: 'SeverityTypes'
                }
              },
              details: {
                required: false,
                read_only: true,
                serialized_name: 'details',
                type: {
                  name: 'String'
                }
              },
              component: {
                required: false,
                read_only: true,
                serialized_name: 'component',
                type: {
                  name: 'String'
                }
              },
              error_id: {
                required: false,
                read_only: true,
                serialized_name: 'errorId',
                type: {
                  name: 'String'
                }
              },
              help_link: {
                required: false,
                read_only: true,
                serialized_name: 'helpLink',
                type: {
                  name: 'String'
                }
              },
              internal_diagnostics: {
                required: false,
                read_only: true,
                serialized_name: 'internalDiagnostics',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                read_only: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              resolution: {
                required: false,
                read_only: true,
                serialized_name: 'resolution',
                type: {
                  name: 'String'
                }
              },
              source: {
                required: false,
                read_only: true,
                serialized_name: 'source',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                read_only: true,
                serialized_name: 'description',
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
