module Services
  class Calculation
    class << self

      attr_accessor :pull_request

      # iterate each pull_requests get parse comment and review
      def perform(pull_requests:)
        
      end

      private

      def pull_request_score
      end

      def pull_request_comment_score
      end

      def pull_request_review_score
      end
    end
  end
end