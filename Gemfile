source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.4.1'

gem 'acts_as_list'
gem 'angular-rails-templates'
gem 'angular_rails_csrf'
gem 'cancancan'
gem 'carrierwave'
gem 'devise'
gem 'ffaker'
gem 'figaro'
gem 'font-awesome-rails'
gem 'haml'
gem 'jbuilder', '~> 2.5'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.4'
gem 'responders'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

gem 'rails_12factor', group: :production

group :development, :test do
  gem 'factory_bot_rails'
  gem 'pry'
  gem 'rspec-rails'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'phantomjs', require: 'phantomjs/poltergeist'
  gem 'poltergeist'
  gem 'rails-controller-testing'
  gem 'shoulda-matchers'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
