source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.3"
gem "rails", "~> 6.0.2", ">= 6.0.2.2"

gem "aws-sdk-s3", "~> 1.61"
gem "bootsnap", ">= 1.4.2", require: false
gem "dotenv-rails"
gem "pg"
gem "puma", "~> 4.1"
gem "redis", "~> 4.1"
gem "sass-rails", ">= 6"
gem "stimulus_reflex", "~> 3.1"
gem "turbolinks", "~> 5"
gem "webpacker", "~> 4.0"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "rspec-rails", "~> 4.0.0"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "pry", "~> 0.12.2"
  gem "shoulda-matchers", "~> 2.8.0", require: false
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
