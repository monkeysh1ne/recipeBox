source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby "2.5.8"
# gem 'rails', '~> 5.1.4'
gem 'rails', '~> 6.1', '>= 6.1.3.2'
# gem 'sqlite3'
# gem "puma", ">= 3.12.2"


gem "puma", ">= 5.3.1"
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'haml', '~> 5.0', '>= 5.0.4'
gem 'simple_form', '~> 5.1'
# gem "simple_form", ">= 5.0.0"
gem 'paperclip', '~> 5.2'
gem 'bootstrap-sass', '~> 3.4'
gem 'cocoon', '~> 1.2', '>= 1.2.11'
gem "devise", ">= 4.7.1"
gem 'aws-sdk', '~> 3.0', '>= 3.0.1'
gem 'sdoc', '~> 0.4.2'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.5'
gem 'mimemagic', '~> 0.3.9'
gem 'pg'
gem 'client_side_validations', '~> 18.0'
gem 'client_side_validations-simple_form', '~> 13.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
