# frozen_string_literal: true

module Contracts
  module Projects
    class LinkProject < Dry::Validation::Contract
      option :project

      params do
        required(:owner_username).filled(:string)
        required(:project_name).filled(:string)
      end

      rule(:owner_username) do
        key.failure('Should be max 255 characters') if value && value.length > 255
      end

      rule(:project_name) do
        key.failure('Should be max 255 characters') if value && value.length > 255
        
        key.failure('Project already exist') if project
      end
    end
  end
end
