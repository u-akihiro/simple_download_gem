# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'downloader/version'

Gem::Specification.new do |spec|
  spec.name          = "downloader"
  spec.version       = Downloader::VERSION
  spec.authors       = ["akihiro uesaka"]
  spec.email         = ["akihiho.uesaka@gmail.com"]
  spec.description   = %q{simple and easy download gem}
  spec.summary       = %q{this is a simple download gem}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
	spec.add_development_dependency "rspec"
end
