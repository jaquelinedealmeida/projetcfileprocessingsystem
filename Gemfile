source "https://rubygems.org"

gem "rails", "~> 7.2.0"

gem "sprockets-rails"

gem "sqlite3", ">= 1.4"

gem "puma", ">= 5.0"

gem "importmap-rails"

gem "turbo-rails"

gem "stimulus-rails"

gem "jbuilder"

gem "redis", ">= 4.0.1"

gem "tzinfo-data" #platforms: %i[ mswin mswin64 mingw x64_mingw jruby ]

gem "bootsnap", require: false

gem "devise"

gem "sidekiq"

gem "active_storage_validations"

# Para descompactação de arquivos ZIP
gem "zip" 

# Para exportação de relatórios em Excel
gem "caxlsx_rails" 

gem 'nokogiri'

group :development, :test do
  gem "debug", platforms: %i[ mri mswin mswin64 mingw x64_mingw ], require: "debug/prelude"

  gem "brakeman", require: false

  gem "rubocop-rails-omakase", require: false

  gem "rspec-rails", group: [:development, :test] 
end

group :development do
  gem "web-console"

  gem "error_highlight", ">= 0.4.0", platforms: [:ruby]
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
