# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cdnetworks-client/version'

Gem::Specification.new do |gem|
  gem.name          = "cdnetworks-client"
  gem.version       = Cdnetworks::Client::VERSION
  gem.authors       = ["Nell Shamrell"]
  gem.email         = ["nshamrell@bluebox.net"]
  gem.description   = %q{Simple wrapper for the CDNetworks Config Open API v1.0 and Cache Purge Open API v2.0}
  gem.summary       = %q{CDNetworks API Wrapper}
  gem.homepage      = "https://github.com/blueboxgroup/cdnetworks-client"
  gem.license       = "Apache"
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "webmock"
end
