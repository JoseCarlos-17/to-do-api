# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'active_model_serializers', '~> 0.10.13'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'net-smtp', '~> 0.3.1'
gem 'pagy', '~> 5.10', '>= 5.10.1'
gem 'pg', '~> 1.4', '>= 1.4.3'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.6', '>= 6.1.6.1'
gem 'sqlite3', '~> 1.4'
# Use sqlite3 as the database for Active Record
# Use Puma as the app server
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 6.2'
  gem 'pry', '~> 0.14.0'
  gem 'rspec-rails', '~> 5.0', '>= 5.0.3'
  gem 'rubocop-rails', '~> 2.15', '>= 2.15.2', require: false
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'shoulda-matchers', '~> 5.1'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
