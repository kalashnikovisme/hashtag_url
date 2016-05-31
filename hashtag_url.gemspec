# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hashtag_url/version'

Gem::Specification.new do |spec|
  spec.name          = "hashtag_url"
  spec.version       = HashtagUrl::VERSION
  spec.authors       = ["Pavel Kalashnikov"]
  spec.email         = ["kalashnikovisme@gmail.com"]

  spec.summary       = %q{Easy urls on social networks hash tags }
  spec.description   = %q{Easy urls on social networks hash tags }
  spec.homepage      = "https://github.com/kalashnikovisme/hashtag_url"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
