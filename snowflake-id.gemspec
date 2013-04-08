# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'snowflake-id/version'

Gem::Specification.new do |spec|
  spec.name          = "snowflake-id"
  spec.version       = SnowflakeId::VERSION
  spec.authors       = ["KOMIYA Atsushi"]
  spec.email         = ["komiya.atsushi@gmail.com"]
  spec.description   = %q{Twitter's Snowflake ID to Time conversion module}
  spec.summary       = %q{Twitter's Snowflake ID to Time conversion module}
  spec.homepage      = "https://github.com/komiya-atsushi/snowflake-id"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
