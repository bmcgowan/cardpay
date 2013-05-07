# -*- encoding: utf-8 -*-
require File.expand_path('../lib/cardpay/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Brian McGowan"]
  gem.email         = ["bmcgowan@fdis-wc.com"]
  gem.description   = %q{Credit card processing library}
  gem.summary       = %q{Credit card processing library}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "cardpay"
  gem.require_paths = ["lib"]
  gem.version       = Cardpay::VERSION
end
