source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.3'

gem 'activeadmin'
gem 'bootstrap', '5.1.0'
gem 'bootstrap_form', '~> 5.0'
gem 'paper_trail'
gem 'rails', '5.2.7'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'

group :test, :production do
  gem 'pg' # For Heroku
end

group :development, :test do
  gem 'byebug'
  gem 'rubocop', require: false
end

group :development do
  gem 'spring'
  gem 'sqlite3', '~> 1.4'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
