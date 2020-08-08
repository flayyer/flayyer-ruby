require_relative 'lib/flayyer/version'

Gem::Specification.new do |spec|
  spec.name          = "flayyer"
  spec.version       = Flayyer::VERSION
  spec.authors       = ["Patricio López Juri"]
  spec.email         = ["patricio@flayyer.com"]

  spec.summary       = "FLAYYER.com helper classes and methods"
  # spec.summary       = %q{TODO: Write a short summary, because RubyGems requires one.}
  spec.description   = "FLAYYER.com helper classes and methods"
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/flayyer/flayyer-ruby"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/flayyer/flayyer-ruby"
  spec.metadata["changelog_uri"] = "https://github.com/flayyer/flayyer-ruby"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
