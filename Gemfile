source 'http://rubygems.org'

gem 'rails', '3.0.5'

# Bundle edge Rails instead: gem 'rails', :git =>
# 'git://github.com/rails/rails.git'

gem 'sqlite3-ruby','1.3.3', :require => 'sqlite3'
gem 'capistrano'
gem 'devise', :git => "git://github.com/plataformatec/devise.git"
gem "oa-oauth", '0.2.0', :require => "omniauth/oauth"

group :development do
  gem 'thin'
end

group :development, :test do
  gem 'cucumber-rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem "rspec-rails", ">= 2.4.1"
  gem 'remarkable_activerecord', '~> 4.0.0.alpha4'
end
