lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "kr/version"

Gem::Specification.new do |s|
  s.name        = 'kr'
  s.version     = Kr::VERSION
  s.date        = '2013-01-31'
  s.summary     = "Konsoru"
  s.description = "API console for Heroku"
  s.authors     = ["Jon Roes"]
  s.email       = 'jroes@heroku.com'
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.files         = `git ls-files`.split($/)
  s.homepage    = 'http://rubygems.org/gems/kr'
  s.license       = 'MIT'
  s.require_paths = ["lib"]

  s.add_dependency 'heroics'
  s.add_dependency 'netrc'
end
