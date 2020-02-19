# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'codecademy_style/version'

Gem::Specification.new do |spec|
  spec.name = 'codecademy-style'
  spec.version = CodecademyStyle::VERSION
  spec.authors = ['Codecademy Engineering']

  spec.summary = 'Shared RuboCop style configuration'
  spec.description = 'This gem holds shared RuboCop configuration for all of' \
'Codecademy\'s Ruby code bases.'
  spec.homepage = 'https://github.com/codecademy-engineering/codecademy-style'

  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  unless spec.respond_to?(:metadata)
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  # Don't allow this gem to be pushed anywhere.
  spec.metadata['allowed_push_host'] = 'none'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Require clients of this gem to have RuboCop installed
  spec.add_dependency 'rubocop', '=0.79'

  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'rubocop', '=0.79'
end
