# frozen_string_literal: true
# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.2.6'

# gem 'sys-proctable'

gem 'coffee-rails'
gem 'pg'
gem 'rails', '~> 4.2.10'
gem 'sass-rails'
gem 'uglifier'

gem 'bootstrap', '~> 4.0.0.beta'

gem 'bcrypt'
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'

gem 'google_drive'

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

gem 'rest-client'

gem 'kaminari'

gem 'rack-mini-profiler'

gem 'mechanize'
gem 'virtus'

gem 'bootstrap3-datetimepicker-rails'
gem 'momentjs-rails'

# For handling user-agent
gem 'rack-user_agent'

gem 'sidekiq'

gem 'carrierwave'
gem 'piet'
# gem 'rmagick'

gem 'http_accept_language'
gem 'nokogiri'

gem 'rack-attack'
gem 'rack-reverse-proxy', require: 'rack/reverse_proxy'

gem 'rack-cors', require: 'rack/cors'

group :development do
  gem 'listen'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'bullet'
  gem 'hub'
  gem 'spring'
  gem 'spring-watcher-listen'
  # debug
  gem 'awesome_print'
  gem 'better_errors'
end

group :development, :test do
  gem 'rubocop', require: false
  gem 'tapp'
  # slim_lint is a tool to help keep your Slim files clean and readable.
  gem 'slim_lint'
end

group :development, :staging do
  gem 'rack-dev-mark'
end

group :staging, :production do
  gem 'rack-timeout'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
