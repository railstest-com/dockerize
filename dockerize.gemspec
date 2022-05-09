# frozen_string_literal: true

require_relative "lib/dockerize/version"

Gem::Specification.new do |spec|
  spec.name = "dockerize"
  spec.version = Dockerize::VERSION
  spec.authors = ["Simon Chiu"]
  spec.email = ["simon@furvur.com"]

  spec.summary = "A simple gem to Dockerize your Ruby on Rails project's development environment."
  spec.description = "Dockerize will add the necessary Docker configuration to your Ruby on Rails project Docker development environment."
  spec.homepage = "https://railstest.com/dockerize"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/railstest-com/dockerize"
  spec.metadata["changelog_uri"] = "https://github.com/railstest-com/dockerize/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
