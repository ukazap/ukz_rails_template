gem 'komponent'
gem 'slim-rails'
gem 'webpacker'

gem_group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'guard'
  gem 'guard-livereload'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'rack-livereload'
end

after_bundle do
  rails_command 'webpacker:install'
  generate 'komponent:install'
  git :init
  git add: "."
  git commit: %Q{ -m 'Ukaza was here.' }
end
