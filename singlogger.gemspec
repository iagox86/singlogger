
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "singlogger/version"

Gem::Specification.new do |spec|
  spec.name          = "singlogger"
  spec.version       = SingLogger::VERSION
  spec.authors       = ["iagox86"]
  spec.email         = ["ron-git@skullsecurity.org"]

  spec.summary       = "Singleton wrapper around Logger"
  spec.description   = "A simple Singleton wrapper around the ruby Logger class, gem-ified it because I found myself using it in several different projects"
  spec.homepage      = "https://github.com/iagox86/singlogger"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
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

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
