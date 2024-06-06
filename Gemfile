source "https://rubygems.org"

ruby "3.3.1"
gem "rails", "~> 7.1.3", ">= 7.1.3.4"
gem "sqlite3", "~> 1.4"
gem "puma", ">= 5.0"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false
gem 'rswag'

group :development, :test do
  gem "debug", platforms: %i[ mri windows ]
  gem 'rspec-rails', '~> 3.5'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

