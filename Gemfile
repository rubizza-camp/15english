# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.0"

gem "rails", "~> 5.2.0"
gem "pg", "~> 1.0.0"
gem "puma", "~> 3.11"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "jbuilder", "~> 2.5"
gem "bcrypt", "~> 3.1.7"
gem "bootsnap", ">= 1.1.0", require: false
gem "devise", "~> 4.4.3"
gem "slim-rails", "~> 3.1.3"
gem "bootstrap", "~> 4.1.3"
gem "jquery-rails", "~> 4.3.3"
gem "listen", ">= 3.0.5", "< 3.2"
gem "rails-i18n", "~> 5.1"
gem "rails_best_practices", "~> 1.19.3"

group :development, :test do
  gem "pry-rails", "~> 0.3.6"
  gem "rails-flog", require: "flog"
end

group :development do
  gem "reek", "~> 5.0.2"
  gem "rubocop-rails_config", "~> 0.2.2"
  gem "web-console", ">= 3.3.0"
  gem "letter_opener", "~> 1.6.0"
  gem "spring", "~> 2.0.2"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "capybara", ">= 2.15", "< 4.0"
  gem "selenium-webdriver", "~> 3.13.1"
  gem "chromedriver-helper", "~> 1.2.0"
  gem "rspec-rails", "~> 3.7.2"
  gem "factory_bot_rails", "~> 4.10.0"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
