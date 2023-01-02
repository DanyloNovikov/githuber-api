# frozen_string_literal: true

module Operations
  module Projects
    class CalculateProject < BaseOperation
      def execute
        provider_data = Services::GithubClient.get_pull_requests(
          owner_username: resource_params[:owner_username],
          project_name: resource_params[:project_name]
        )

        if provider_data[:success]
          if project.nil?
            @project = Project.create(
              owner_username: resource_params[:owner_username],
              project_name: resource_params[:project_name]
            )
          end

          @project_calculations = ::ProjectCalculation.where(project_id: project.id,
                                                             start_week: (DateTime.now - 1.week).beginning_of_week,
                                                             end_week: (DateTime.now - 1.week).end_of_week)

          if @project_calculations.empty?
            @project_calculations = Services::Calculation.new(
              project: project,
              users_actions: load_actions(
                pull_requests: Services::Parser.parse_pull_requests(pull_requests: provider_data[:data])
              )
            ).perform
          end

          response_success
        else
          add_error(key: :provider_error, message: provider_data[:data])
          response_failure
        end
      end

      private

      def operation_schema
        {
          contract: Contracts::Projects::LinkProject,
          contract_params: resource_params.to_h
        }
      end

      def resource_params
        params.permit(:owner_username, :project_name)
      end

      def serialize_data
        Serializers::Projects::ProjectCalculationSerializer.new(
          @project_calculations
        ).serializable_hash
      end

      def project
        @project = Project.find_by(project_name: resource_params[:project_name])
      end

      def load_actions(pull_requests:)
        comments = []
        reviews  = []

        pull_requests.each do |pull_request|
          pull_request_comments = Services::GithubClient.get_comments(
            owner_username: project.owner_username,
            project_name: project.project_name,
            pull_request_id: pull_request[:id]
          )[:data]

          comments += pull_request_comments if pull_request_comments.instance_of?(Array)

          pull_request_reviews = Services::GithubClient.get_reviews(
            owner_username: project.owner_username,
            project_name: project.project_name,
            pull_request_id: pull_request[:id]
          )[:data]

          reviews += pull_request_reviews if pull_request_reviews.instance_of?(Array)
        end

        comments = Services::Parser.parse_comments(comments: comments)
        reviews  = Services::Parser.parse_reviews(reviews: reviews)

        Services::Parser.preare_data_for_calculation(
          pull_requests: pull_requests,
          comments: comments,
          reviews: reviews
        )
      end
    end
  end
end
