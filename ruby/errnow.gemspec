# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name          = 'errnow'
  s.version       = '0.0.1'
  s.authors       = ['mryoshio']
  s.email         = ['yoshiokaas@tachibanakikaku.com']
  s.summary       = %q{ErrNow gem.}
  s.description   = %q{Gem for ErrNow.}
  s.homepage      = ''
  s.license       = 'GPLv3'

  s.files = [
    'errnow.gemspec',
    'lib/errnow.rb',
    'lib/errnow/instance_methods.rb',
    'lib/errnow/connector.rb',
    'README.md'
  ]

  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']

  s.add_development_dependency 'bundler', '~> 1.6'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'rspec', '>= 3'
end
