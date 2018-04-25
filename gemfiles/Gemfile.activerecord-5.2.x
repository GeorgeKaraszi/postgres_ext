source "https://rubygems.org"

gemspec :path => '..'

gem "activerecord", "~> 5.2.0"
gem "pg", "~> 0.15"

unless ENV['CI'] || RUBY_PLATFORM =~ /java/
  gem 'byebug'
end
