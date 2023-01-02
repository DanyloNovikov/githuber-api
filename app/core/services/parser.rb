# frozen_string_literal: true

module Services
  class Parser
    class << self
      def parse_pull_requests(pull_requests:)
        parsed_pull_requests = []

        pull_requests.each do |pull_request|
          # rubocop:disable Layout/LineLength
          next unless (DateTime.now - 1.week).beginning_of_week <= DateTime.parse(pull_request['created_at']) && (DateTime.now - 1.week).end_of_week >= DateTime.parse(pull_request['created_at'])
          # rubocop:enable Layout/LineLength

          parsed_pull_requests.push({
                                      type: :pull_request,
                                      creator: pull_request['user']['login'],
                                      id: pull_request['number']
                                    })
        end

        parsed_pull_requests
      end

      def parse_comments(comments:)
        parsed_comments = []

        comments.each do |comment|
          parsed_comments.push({
                                 type: :comment,
                                 creator: comment['user']['login']
                               })
        end

        parsed_comments
      end

      def parse_reviews(reviews:)
        parsed_reviews = []

        reviews.each do |review|
          parsed_reviews.push({
                                type: :review,
                                creator: review['user']['login']
                              })
        end

        parsed_reviews
      end

      def preare_data_for_calculation(pull_requests:, comments:, reviews:)
        all_actions = pull_requests + comments + reviews
        users_actions = {}

        all_actions.each do |action|
          if users_actions[action[:creator]].nil?
            users_actions[action[:creator]] = [].push(action)
          else
            users_actions[action[:creator]].push(action)
          end
        end

        prepare_counter(users_actions: users_actions)
      end

      private

      def prepare_counter(users_actions:)
        hash = {}
        users_actions.map do |user, actions|
          hash_counters = {
            pull_requests_count: 0,
            comments_count: 0,
            reviews_count: 0
          }

          actions.each do |action|
            case action[:type]
            when :pull_request
              hash_counters[:pull_requests_count] += 1
            when :comment
              hash_counters[:comments_count] += 1
            when :review
              hash_counters[:reviews_count] += 1
            end
          end

          hash[user] = hash_counters
        end

        hash
      end
    end
  end
end
