# frozen_string_literal: true

module Serializers
  module Projects
    class AllProjectsSerializer
      include JSONAPI::Serializer

      set_type :project
      attributes :project_name, :owner_username
    end
  end
end
