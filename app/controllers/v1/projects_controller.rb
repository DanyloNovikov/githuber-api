# frozen_string_literal: true

module V1
  class ProjectsController < ApplicationController
    provides action: :calculate_project,        via: :projects
    provides action: :index,                    via: :projects
  end
end
