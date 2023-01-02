source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.4"

gem "rails", "~> 7.0.4"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"

# Serailziers for API
gem 'jsonapi-serializer'

# Rest client service
gem 'faraday'
gem 'net-http'

# validation for controllers level 
gem 'dry-transaction'
gem 'dry-validation'

group :development, :test do
  gem "pry"
  gem "rspec-rails"
  gem "rubocop",       require: false
  gem "rubocop-rails", require: false
end

group :test do
  gem 'factory_bot_rails'
  gem 'shoulda-matchers', '~> 5.0'
  gem 'faker'
  gem 'database_cleaner-active_record'
  gem 'webmock'
  end

gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
