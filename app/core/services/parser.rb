module Services
  class Parser
    class << self

      def get_pull_requests_comments(pull_request: GithubClient.get_pull_request)
      end
  
      def get_pull_requests_reviews(pull_request: GithubClient.get_pull_request)
      end
    end
  end
end