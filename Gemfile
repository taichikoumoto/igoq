# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.4.1'

gem 'coffee-rails', '~> 4.2'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'rails'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

gem 'bootstrap', '~> 4.0.0.beta'

gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'

gem 'autoprefixer-rails'
gem 'bootstrap_form'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'nested_form'
gem 'slim-rails'

gem 'vuejs-rails'

gem 'active_model_serializers'
gem 'airbrake'
gem 'config'

gem 'by_star'

gem 'devise'
gem 'omniauth'
gem 'omniauth-facebook'

gem 'gretel'

gem 'activerecord-import'
gem 'rest-client'
gem 'seed-fu'

gem 'kaminari'

gem 'rack-mini-profiler'

gem 'mechanize'

gem 'puma_worker_killer'
gem 'virtus'

gem 'bootstrap3-datetimepicker-rails'
gem 'momentjs-rails'

# FIXME
# Rails5にGlobalizeが対応したら修正する
# after globalize adjusts to Rails5, fix code
gem 'activemodel-serializers-xml'
gem 'globalize', github: 'globalize/globalize'
gem 'globalize-accessors'

gem 'draper'

# For handling user-agent
gem 'rack-user_agent'

gem 'newrelic_rpm'

gem 'sidekiq'
# For checking sidekiq dashboard
gem 'sidekiq-failures'
gem 'sidekiq-history'
gem 'sidekiq-statistic'
gem 'sinatra', require: false

gem 'redis'
gem 'redis-namespace'
gem 'redis-rails'

gem 'font-awesome-rails'
gem 'meta-tags'

gem 'slack-api'

gem 'aws-sdk'
gem 'fog-aws'

gem 'carrierwave'
gem 'piet'
gem 'rmagick'

gem 'nokogiri'
gem 'poltergeist'

gem 'http_accept_language'

gem 'rack-attack'
gem 'rack-reverse-proxy', require: 'rack/reverse_proxy'

gem 'rack-cors', require: 'rack/cors'

gem 'sitemap_generator'

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'annotate'
  gem 'bullet'
  gem 'html2slim'
  gem 'hub'
  gem 'rails-erd'
  gem 'rails_best_practices'

  gem 'brakeman', require: false

  # debug
  gem 'awesome_print'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'hirb'

  gem 'guard-rspec', require: false
  gem 'letter_opener_web'
  gem 'lol_dba'
end

group :development, :test do
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'pry-stack_explorer'
  gem 'rails-controller-testing'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'rubocop', '~> 0.49.1', require: false
  gem 'tapp'
  # slim_lint is a tool to help keep your Slim files clean and readable.
  gem 'faker'
  gem 'ffaker'
  gem 'slim_lint'

  gem 'capybara'
end

group :test do
  gem 'json_expressions'
  gem 'shoulda-matchers', git: 'https://github.com/thoughtbot/shoulda-matchers.git', branch: 'rails-5'
  gem 'simplecov', require: false
  gem 'webmock'
end

group :development, :staging do
  gem 'rack-dev-mark'
end

group :staging, :production do
  gem 'rack-timeout'
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
