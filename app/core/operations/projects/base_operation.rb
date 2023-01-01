# frozen_string_literal: true

require 'dry/transaction'
require 'dry/transaction/operation'

module Operations
  module Projects
    class BaseOperation
      include Dry::Transaction::Operation

      attr_accessor :status, :errors, :params
      attr_reader   :current_user

      def call(params)
        @params = params
        @errors = []
        @current_user = params[:current_user]

        if operation_schema[:contract]
          validation_result = operation_schema[:contract]
                              .new(operation_schema[:shared_data])
                              .call(operation_schema[:contract_params])
        end
        if operation_schema[:contract].nil? || validation_result.success?
          execute
        else
          validation_result.errors.to_h.each do |key, value|
            error_key = key || 'base_error'
            error_message = generate_error_message(error_key, value)

            add_error(key: error_key, message: error_message)
          end
          response_failure
        end
      end

      protected

      def operation_schema
        { contract: nil, contract_params: nil, shared_data: {} }
      end

      def execute
        raise NotImplementedError, 'define #execute method in your operation'
      end

      def serialize_data
        raise NotImplementedError, 'define #serialize_data method in your operation'
      end

      def response_success
        Success(data: serialize_data, status: status || :ok)
      end

      def response_failure
        Failure(errors: errors, status: status || :unprocessable_entity)
      end

      def add_error(key:, message:)
        error = {}
        error[key] = message
        errors << error
      end

      def add_errors_from_record(record)
        record.errors.each { |error| add_error(key: error.attribute, message: error.full_message) }
      end

      private

      def generate_error_message(key, value)
        key = key.to_s.tr('.', '_').humanize

        case value
        when Array
          "#{key}: #{value.last}"
        when String
          "#{key}: #{value}"
        when Hash
          error_key, error_value = value.collect { |k, v| [k, v] }.flatten
          generate_error_message(error_key, error_value)
        else
          "#{key}: Unknown error"
        end
      end
    end
  end
end
