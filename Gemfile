source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'

group :production do
  gem 'mysql2'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

#for account authentication
gem 'devise'

#for front-end
gem 'bootstrap-sass'

#for upload file
gem 'carrierwave'
#for process uploaded image
gem 'subexec', :git => "https://github.com/nulayer/subexec.git"
gem 'mini_magick'

gem 'simple_form'

#for state machines
gem "aasm"

#for dispaly email at local
group :development do
  gem "letter_opener"
  gem "roadie"
end

#for credit card payment
gem "stripe"

#for store secure key info
gem "settingslogic"

#for search product
gem "ransack"

gem "rvm-capistrano"

group :development do
  gem 'capistrano', '~> 2.15'
  gem "capistrano-ext"
  gem 'capistrano-unicorn', :require => false
  gem "cape"
end

#for set env on production server
gem 'dotenv'
gem 'dotenv-deployment'

#for seo
gem 'seo_helper', '~> 1.0'
