source 'https://rubygems.org'

gem 'rails', '3.2.11'
gem 'bootstrap-sass'
gem 'twitter'
gem 'newrelic_rpm'
gem 'jquery-rails'

# For user authentication
gem 'bcrypt-ruby'
gem 'devise'


group :development, :test do
  gem "rspec-rails"  
  gem 'sqlite3'
  # gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'launchy'
end

group :test do
	gem "rspec", '2.12.0'
	gem "factory_girl_rails"
	gem "capybara"
	gem "cucumber-rails", :require =>false
	gem "database_cleaner"
end

group :production do 
	gem 'pg'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby
  gem 'uglifier', '>= 1.0.3'
end


# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'