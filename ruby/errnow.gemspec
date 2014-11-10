# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'errnow/version'

Gem::Specification.new do |spec|
  spec.name          = 'errnow'
  spec.version       = Errnow::VERSION
  spec.authors       = ['mryoshio']
  spec.email         = ['yoshiokaas@tachibanakikaku.com']
  spec.summary       = %q{ErrNow gem.}
  spec.description   = %q{Gem for ErrNow.}
  spec.homepage      = ''
  spec.license       = 'GPLv3'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'activesupport', '~> 4.1'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '>= 3'
end
