# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "execjs-async/version"

Gem::Specification.new do |s|
  s.name        = "execjs-async"
  s.version     = Execjs::Async::VERSION
  s.authors     = ["Eric Allam"]
  s.email       = ["rubymaverick@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Enables Asynchronous Javascript Execution in ExecJS}
  s.description = %q{Enables Asynchronous Javascript Execution in ExecJS}

  s.rubyforge_project = "execjs-async"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "execjs", '~> 1.1.0'
end
