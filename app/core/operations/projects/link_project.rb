# frozen_string_literal: true

module Operations
  module Projects
    class LinkProject < BaseOperation
      def execute
        # TODO: need to check exist repository in github or not
        provider_data = GithubClient.get_pull_requests()
        
        if provider_data[:success]
          # code here 

          response_success
        else
          add_error(key: :provider_error, message: provider_data[:error])
          response_failure
        end
      end

      private

      def operation_schema
        {
          contract: Contracts::Projects::LinkProject,
          contract_params: resource_params.to_h,
          shared_data: {
            project: project
          }
        }
      end

      def resource_params
        params.permit(:owner_username, :project_name)
      end

      def serialize_data
        { success: true }
      end

      def project
        @project ||= Project.find_by(project_name: resource_params[:project_name])
      end
    end
  end
end
