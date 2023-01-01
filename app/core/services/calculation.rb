# frozen_string_literal: true

module Services
  class Calculation
    def initialize(project:, users_actions:)
      @project = project
      @users_actions = users_actions
    end

    def perform
      response = []

      @users_actions.each do |user, counters|
        pull_requests_score = create_pull_request_score(count: counters[:pull_requests_count])
        comments_score      = pull_request_comment_score(count: counters[:comments_count])
        reviews_score       = pull_request_review_score(count: counters[:reviews_count])

        response << ProjectCalculation.create(
          project_id: @project.id,
          username: user,
          start_week: (DateTime.now - 1.week).beginning_of_week,
          end_week: (DateTime.now - 1.week).end_of_week,
          create_pull_request_score: pull_requests_score,
          pull_request_comment_score: comments_score,
          pull_request_review_score: reviews_score,
          total_score: pull_requests_score + comments_score + reviews_score
        )
      end

      response
    end

    private

    def create_pull_request_score(count:)
      count * 12
    end

    def pull_request_comment_score(count:)
      count * 1
    end

    def pull_request_review_score(count:)
      count * 3
    end
  end
end
