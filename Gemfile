source "https://rubygems.org"

gem "rails", "~> 7.2.0"

gem "sprockets-rails"

gem "sqlite3"

gem "puma", ">= 5.0"

gem "importmap-rails", "~> 2.0.1"

gem "importmap"

gem "turbo-rails"

gem "stimulus-rails"

gem "jbuilder"

gem "redis", ">= 4.0.1"

gem "tzinfo-data"

gem "bootsnap", require: false

gem "devise"

gem "sidekiq"

gem "active_storage_validations"

gem "zip"

gem "caxlsx_rails"

gem "nokogiri"

gem "psych", "~> 5.0"

gem "rubocop", "~> 1.67"

gem "rubocop-rails-omakase"

group :development, :test do
  # gem "debug", platforms: %i[ mri mswin mswin64 mingw x64_mingw ], require: "debug/prelude"

  gem "brakeman", require: false

  # gem "rubocop-rails-omakase", require: false

  gem "rspec-rails", group: [ :development, :test ]
end

group :development do
  gem "web-console"

  gem "error_highlight", ">= 0.4.0", platforms: [ :ruby ]
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
