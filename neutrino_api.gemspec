Gem::Specification.new do |s|
  s.name = 'neutrino_api'
  s.version = '3.4.5'
  s.summary = 'neutrino_api'
  s.description = 'The general-purpose API'
  s.authors = ['Neutrino API']
  s.email = 'tech@neutrinoapi.com'
  s.homepage = 'https://www.neutrinoapi.com/'
  s.license = 'MIT'
  s.add_dependency('logging', '~> 2.0')
  s.add_dependency('faraday', '~> 0.10')
  s.add_dependency('faraday_middleware', '~> 0.13.1')
  s.add_dependency('test-unit', '~> 3.1', '>= 3.1.5')
  s.add_dependency('certifi', '~> 2016')
  s.add_dependency('faraday-http-cache', '~> 1.2', '>= 1.2.2')
  s.required_ruby_version = '~> 2.0'
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
