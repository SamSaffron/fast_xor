Gem::Specification.new do |s|
  s.name = 'fast_xor'
  s.version = '1.1.2'
  s.date = '2013-03-22'
  s.summary = 'Fast String XOR operator'
  s.description = 'Provides a C-optimized method for in-place XORing of two (or three) strings'

  s.authors = ['Steve Sloan']
  s.email = 'steve@finagle.org'
  s.homepage = 'http://github.com/CodeMonkeySteve/fast_xor'

  s.extensions = ['ext/xor/extconf.rb']
  s.require_paths = ['lib']
  s.files = [
    'MIT-LICENSE',
    'README.rdoc',
    'benchmark',
    'lib/.gemkeep',
    'ext/xor/xor.c',
    'ext/xor/extconf.rb',
  ]
  s.test_files = Dir['spec/**/*_spec.rb']

  s.extra_rdoc_files = ['README.rdoc']
  s.rdoc_options = ['--charset=UTF-8']

  s.platform = Gem::Platform::RUBY
  s.rubygems_version = '1.3.7'

  s.add_dependency 'rake'
  s.add_dependency 'rake-compiler'

  s.add_development_dependency 'rspec'

  s.rdoc_options = %w[
    --exclude .*\.so
  ]
end

