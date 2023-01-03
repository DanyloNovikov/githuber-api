FactoryBot.define do
  factory :project do
    owner_username { Faker::Game.title.downcase.gsub(" ", "-") }
    project_name { Faker::Name.unique.name.gsub(" ", "") }
  end
end
