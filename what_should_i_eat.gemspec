require_relative 'lib/what_should_i_eat/version'

Gem::Specification.new do |spec|
  spec.name          = "what_should_i_eat"
  spec.version       = WhatShouldIEat::VERSION
  spec.authors       = ["ianmcdavid"]
  spec.email         = ["ianmcdavid25@gmail.com"]

  spec.summary       = %q{"Suggests things to eat for dinner"}
  spec.description   = %q{"Takes recipes of the 'get inspired' section of the Edamam API, and randomly displays different recipes to try.  Written for a class project as part of the Ruby lesson with Skillcrush.com"}
  spec.homepage      = "https://github.com/ianmcdavid/what_should_i_eat"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/ianmcdavid/what_should_i_eat'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ianmcdavid/what_should_i_eat"
  spec.metadata["changelog_uri"] = "https://github.com/ianmcdavid/what_should_i_eat"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency 'http'
end
