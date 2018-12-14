# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.5.1'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'audited', '4.2'
gem 'awesome_print', '~> 1.8'
gem 'httparty', '~> 0.16.2'
gem 'jbuilder', '~> 2.5'
gem 'mongoid', '~> 6.1.0'
gem 'puma', '~> 3.7'
gem 'rack-cors', :require => 'rack/cors'
gem 'rails', '~> 5.2.0'

group :development do
  gem 'listen', '~> 3.0'
  gem 'rubocop', '~> 0.54.0', require: false
  gem 'bullet'
end

group :development, :test do
  # Call 'binding.pry' anywhere in the code to stop execution
  gem 'pry-rails'
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 3.7'
end

group :test do
  gem 'mongoid-rspec'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'simplecov', require: false
  gem 'webmock', '~> 3.3'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
