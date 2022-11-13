source 'https://rubygems.org'
git_source(:github) { |repo| 'https://github.com/#{repo}.git' }

ruby '3.1.2'

gem 'rails', '~> 7.0.4'

gem 'haml-rails', '~> 2.1'
gem 'sprockets-rails'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'sassc-rails'
gem 'font-awesome-rails'
gem 'bootstrap'
gem 'puma', '~> 5.0'
gem 'pg'
gem 'jbuilder'
gem 'tzinfo-data', platforms: %i[ mingw mswin x64_mingw jruby ]
gem 'bootsnap', require: false

gem 'delayed_job_active_record', '~> 4.1'
gem 'twilio-ruby', '~> 5.73'
gem 'pundit', '~> 2.2'
gem 'audited', '~> 5.0'
gem 'meta-tags'

# gem 'image_processing', '~> 1.2'

group :development, :test do
  gem 'debug', platforms: %i[ mri mingw x64_mingw ]
  gem 'sqlite3'
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
