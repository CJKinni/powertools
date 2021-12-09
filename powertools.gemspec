# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name	= 'powertools'
  s.version	= '0.2.1'
  s.summary	= 'A set of small improvements to Ruby classes'
  s.authors	= ['C. Kinniburgh']
  s.email		= 'powertools@cjkinni.com'
  s.files		= ['lib/powertools.rb', 'lib/powertool/range.rb', 'lib/powertool/maybe_chain.rb']
  s.homepage	= 'http://github.com/cjkinni/powertools'
  s.required_ruby_version = '>= 2.5.0'
  s.license	= 'MIT'
  s.metadata = {
    'rubygems_mfa_required' => 'true'
  }
end
