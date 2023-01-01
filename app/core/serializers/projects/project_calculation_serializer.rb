# frozen_string_literal: true

module Serializers
  module Projects
    class ProjectCalculationSerializer
      include JSONAPI::Serializer

      attributes :username, :start_week, :end_week,
                 :create_pull_request_score, :pull_request_comment_score,
                 :pull_request_review_score, :total_score

      attribute :project_name do |object|
        object.project.project_name
      end
    end
  end
end
