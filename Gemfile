# If you have OpenSSL installed, we recommend updating
# the following line to use 'https'
source 'http://rubygems.org'

gem 'middleman', '~>3.3.2'

# Live-reloading plugin
gem 'middleman-livereload', '~> 3.1.0'

# For faster file watcher updates on Windows:
gem 'wdm', '~> 0.1.0', :platforms => [:mswin, :mingw]

# Windows does not come with time zone data
gem 'tzinfo-data', platforms: [:mswin, :mingw]

gem 'middleman-blog'

gem 'i18n', '0.6.9'

# Use oulu
gem 'slim'
gem 'middleman-minify-html'
gem 'middleman-syntax'
gem 'redcarpet'
gem 'middleman-deploy'

if ENV['LOCAL_MIDDLEMAN_OULU']
  gem 'middleman-oulu', path: ENV['LOCAL_MIDDLEMAN_OULU']
else
  gem 'middleman-oulu'
end
