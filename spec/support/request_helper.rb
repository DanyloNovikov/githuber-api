# frozen_string_literal: true

module Request
  module JsonHelpers
    def json_response
      @json_response ||= JSON.parse(response.body)
    end
  end
end
