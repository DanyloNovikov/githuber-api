FactoryBot.define do
  factory :project_calculation do
    username { Faker::Name.unique.name.gsub(' ', '') }

    
    start_week { (DateTime.now - 1.week).beginning_of_week }
    end_week { (DateTime.now - 1.week).end_of_week }

    create_pull_request_score { [12, 24, 36, 48, 60].sample }
    pull_request_comment_score { 1..20 }
    pull_request_review_score { [3, 6, 9, 12, 15, 18, 21, 24, 27, 30].sample }

    total_score { create_pull_request_score + pull_request_comment_score + pull_request_review_score }
  end
end