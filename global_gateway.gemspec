# -*- encoding: utf-8 -*-
require File.expand_path('../lib/global_gateway/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Brian McGowan"]
  gem.email         = ["bmcgowan@fdis-wc.com"]
  gem.description   = %q{Global Gateway e4 client library}
  gem.summary       = %q{First Data Global Gateway e4 client library for credit card processing}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "global_gateway"
  gem.require_paths = ["lib"]
  gem.version       = GlobalGateway::VERSION
end
