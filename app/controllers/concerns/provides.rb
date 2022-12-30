# frozen_string_literal: true

module Provides
  extend ActiveSupport::Concern

  def provides(action:, via:)
    define_method(action) do
      operation = Object.const_get "Operations::#{via.to_s.camelize}::#{action.to_s.camelize}"
      operation.new.call(params) do |response|
        response.success do |object|
          render json: object[:data], status: object[:status]
        end

        response.failure do |object|
          render json: { errors: object[:errors] }, status: object[:status]
        end
      end
    end
  end
end
