# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'docgen/version'

Gem::Specification.new do |spec|
  spec.name          = "docgen"
  spec.version       = Docgen::VERSION
  spec.authors       = ["Dave Nicolette"]
  spec.email         = ["davenicolette@gmail.com"]

  spec.summary       = %q{Merge boilerplate and custom content to generate documents.}
  spec.description   = %q{Generate documents in various formats based on standard boilerplate and custom content.}
  spec.homepage      = "https://github.com/neopragma/docgen"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "sqlite3", "~> 1.3"
  spec.add_dependency "sequel", "~> 4.43"
  spec.add_dependency "kramdown", "~> 1.13"
  spec.add_dependency "nokogiri", "~> 1.7.2"
  spec.add_dependency "prawn", "~> 2.1"
  spec.add_dependency "prawn-table", "~> 0.2"
  spec.add_dependency "rubyzip", "~> 1.2.1"
end
