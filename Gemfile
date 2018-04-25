# frozen_string_literal: true

source "https://rubygems.org"

# Specify your gem's dependencies in postgres_ext.gemspec
gemspec

unless ENV["CI"]
  group :development, :test do
    gem "rubocop", "~> 0.54.0", require: false

    gem "byebug", "~> 9.0", ">= 9.0.6"
    gem "pry", "~> 0.11.3"
    gem "pry-byebug", "~> 3.5", ">= 3.5.1"
  end
end

gem "fivemat"
