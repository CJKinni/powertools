# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name	= 'powertools'
  s.version	= '0.3.0'
  s.summary	= 'A set of small improvements to Ruby classes'
  s.authors	= ['C. Kinniburgh']
  s.email		= 'powertools@cjkinni.com'
  s.files		= Dir.glob('lib/**/*') + %w[LICENSE README.md]
  s.homepage	= 'http://github.com/cjkinni/powertools'
  s.required_ruby_version = '>= 2.5.0'
  s.license	= 'MIT'
  s.metadata = {
    'rubygems_mfa_required' => 'true'
  }
end
