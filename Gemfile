source 'https://rubygems.org'
ruby '2.1.2'
gem 'rails', '4.0.3'
gem 'sqlite3'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'bootstrap-sass'
gem 'cancan'
gem 'devise'
gem 'devise_invitable'
gem 'figaro'
gem 'rolify'
gem 'slim-rails'
gem 'therubyracer'
gem 'websocket-rails'
gem 'valid_email'
gem 'simple_form', '>= 3.0.0.rc'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'hub', :require=>nil
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'capistrano',  '~> 3.1'
  gem 'capistrano-rails', '~> 1.1'
  gem 'capistrano-rvm'
  gem "capistrano-resque", github: "sshingler/capistrano-resque", require: false
  gem 'thin'
end
group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end
group :test do
  gem 'capybara'
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
end

group :production do
  gem 'mysql2'
end