# frozen_string_literal: true

class Project < ApplicationRecord
  has_many :project_calculations, dependent: :destroy
end
