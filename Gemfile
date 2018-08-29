# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.0"

gem "rails", "5.2.0"
gem "pg", "1.0.0"
gem "puma", "3.11"
gem "sass-rails", "5.0.7"
gem "uglifier", "4.1.18"
gem "jbuilder", "2.7.0"
gem "bcrypt", "3.1.12"
gem "bootsnap", "1.3.1", require: false
gem "devise", "4.4.3"
gem "slim-rails", "3.1.3"
gem "bootstrap", "4.1.3"
gem "jquery-rails", "4.3.3"
gem "js-routes-rails", "1.0.0"
gem "listen", ">= 3.0.5", "< 3.2"
gem "rails-i18n", "5.1.1"
gem "rails_best_practices", "1.19.3"
gem "pundit", "2.0.0"
gem "carrierwave", "1.2.3"
gem "mini_magick", "4.8.0"
gem "autoprefixer-rails", "9.0.2"
gem "simple_form", "4.0.1"
gem "administrate", "0.10.0"
gem "will_paginate", "3.1.6"
gem "administrate-field-carrierwave", "0.3.2"
gem "trix", "0.10.1"
gem "gdpr_rails", "0.3.3"
gem "omniauth-facebook", "5.0.0"
gem "friendly_id", "5.2.0"

group :development, :test do
  gem "pry-rails", "0.3.6"
  gem "rails-flog", "1.4.0", require: "flog"
end

group :development do
  gem "reek", "5.0.2"
  gem "rubocop-rails_config", "0.2.2"
  gem "web-console", "3.6.2"
  gem "letter_opener", "1.6.0"
  gem "spring", "2.0.2"
  gem "spring-watcher-listen", "2.0.1"
  gem "whenever", "0.10.0", require: false
  gem "brakeman", "4.3.1"
end

group :test do
  gem "capybara", ">= 2.15", "< 4.0"
  gem "selenium-webdriver", "3.13.1"
  gem "chromedriver-helper", "1.2.0"
  gem "rspec-rails", "3.7.2"
  gem "factory_bot_rails", "4.10.0"
end

group :production do
  gem "fog-aws", "3.0.0"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
