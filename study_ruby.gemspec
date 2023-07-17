# frozen_string_literal: true

require_relative "lib/study_ruby/version"

Gem::Specification.new do |spec|
  spec.name = "study_ruby"
  spec.version = StudyRuby::VERSION
  spec.authors = ["Philipe"]
  spec.email = ["dev.philipe@outlook.com"]

  spec.summary = "This RubyGem provides a collection of Ruby exercises and logic puzzles, accompanied by corresponding RSpec tests."
  spec.description = "It serves as a learning resource for improving programming skills and enhancing logical thinking through hands-on practice. The exercises cover various concepts, algorithms, and problem-solving techniques in Ruby, making it an ideal tool for beginners and intermediate developers seeking to strengthen their proficiency in the language."
  spec.homepage = "https://github.com/PhilipeeX/study_ruby_gem"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/PhilipeeX/study_ruby_gem"
  spec.metadata["changelog_uri"] = "https://github.com/PhilipeeX/study_ruby_gem/blob/main/CHANGELOG.md"

  spec.files = Dir.glob("lib/**/*")
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'pry-rails'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'better_errors'
  spec.add_development_dependency 'ruby-debug-ide'

end
