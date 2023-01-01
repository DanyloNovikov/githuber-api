# frozen_string_literal: true

module V1
  class ProjectsController < ApplicationController
    provides action: :link_project,        via: :projects
    provides action: :all_projects,        via: :projects
  end
end
