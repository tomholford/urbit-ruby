require_relative 'lib/urbit/api/version'

Gem::Specification.new do |spec|
  spec.name          = "urbit-api"
  spec.version       = Urbit::Api::VERSION
  spec.authors       = ["Daryl Richter"]
  spec.email         = ["daryl@deliverycircle.com"]

  spec.summary       = %q{The Ruby interface to the Urbit HTTP API}
  spec.description   = %q{Access your urbit pier the ruby way. It's an Martian gem.}
  spec.homepage      = "https://github.com/Zaxonomy/urbit-ruby"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Zaxonomy/urbit-ruby"
  spec.metadata["changelog_uri"] = "https://github.com/Zaxonomy/urbit-ruby/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end