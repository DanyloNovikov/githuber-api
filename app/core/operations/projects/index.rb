# frozen_string_literal: true

module Operations
  module Projects
    class Index < BaseOperation
      def execute
        response_success
      end

      private

      def serialize_data
        Serializers::Projects::AllProjectsSerializer.new(
          Project.all
        ).serializable_hash
      end
    end
  end
end
