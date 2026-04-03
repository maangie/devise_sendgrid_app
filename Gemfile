source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '4.0.2'

gem 'rails', '~> 8.1.3'
gem 'sprockets-rails'
gem 'sqlite3', '>= 2.4', group: [:development, :test]
gem 'pg', group: :production
gem 'puma', '~> 7.2'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'devise', '~> 5.0'

group :development, :test do
  gem 'debug', platforms: [:mri, :windows], require: 'debug/prelude'
  gem 'dotenv-rails'
end

group :development do
  gem 'web-console'
  gem 'listen'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:windows, :jruby]
