# frozen_string_literal: true

module Services
  class GithubClient
    class << self
      def get_pull_requests(owner_username:, project_name:)
        send_request(
          base_url: "https://api.github.com/repos/#{owner_username}/#{project_name}/pulls"
        )
      end

      def get_comments(owner_username:, project_name:, pull_request_id:)
        send_request(
          base_url: "https://api.github.com/repos/#{owner_username}/#{project_name}/issues/#{pull_request_id}/comments"
        )
      end

      def get_reviews(owner_username:, project_name:, pull_request_id:)
        send_request(
          base_url: "https://api.github.com/repos/#{owner_username}/#{project_name}/pulls/#{pull_request_id}/reviews"
        )
      end

      private

      def send_request(base_url:)
        total_response = []
        counter = 1
        stop = false

        until stop
          conn = Faraday.new(
            url: base_url,
            headers: {
              Accept: 'application/vnd.github+json',
              Authorization: "Bearer #{ENV.fetch('GIT_AUTH_TOKEN', nil)}",
              'X-GitHub-Api-Version': '2022-11-28'
            },
            params: {
              per_page: 100,
              page: counter
            }
          )

          response = conn.get
          response_body = JSON.parse(response.body)

          if !response.success?
            total_response.push(response_body) # for errors because return hash
            stop = true
          elsif response_body.empty?
            stop = true
          elsif response_body.count <= 100
            total_response += response_body
            stop = true
          else
            total_response += response_body
            counter += 1
          end
        end

        if total_response.empty?
          { success: false, data: { message: 'there was no pull request' } }
        else
          { success: response.success?, data: total_response }
        end
      end
    end
  end
end
