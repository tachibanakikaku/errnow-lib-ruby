# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'errnow/version'

Gem::Specification.new do |s|
  s.name          = 'errnow'
  s.version       = Errnow::VERSION
  s.authors       = ['mryoshio']
  s.email         = ['yoshiokaas@tachibanakikaku.com']
  s.summary       = %q{ErrNow gem.}
  s.description   = %q{Gem for ErrNow.}
  s.homepage      = ''
  s.license       = 'GPLv3'
  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']

  s.add_dependency 'activesupport', '>= 3.0.0'

  s.add_development_dependency 'bundler', '~> 1.6'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'rspec', '>= 3'
end
