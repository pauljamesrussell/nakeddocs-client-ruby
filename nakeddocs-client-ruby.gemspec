# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nakeddocs-client-ruby/version"

Gem::Specification.new do |s|
  s.name        = "nakeddocs-client-ruby"
  s.version     = Nakeddocs::Client::Ruby::VERSION
  s.authors     = ["Paul Russell", "Paul Grenyer"]
  s.email       = ["paul@pauljamesrussell.org", "paul.grenyer@gmail.com"]
  s.homepage    = ""
  s.summary     = "Ruby client library for the NakedDocs DMS"
  s.description = "Ruby client library for the NakedDocs DMS"

  s.rubyforge_project = "nakeddocs-client-ruby"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
  s.add_development_dependency "pry"
  s.add_dependency "activeresource"
end
