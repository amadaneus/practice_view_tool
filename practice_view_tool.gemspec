
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "practice_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "practice_view_tool"
  spec.version       = PracticeViewTool::VERSION
  spec.authors       = ["amadaneus"]
  spec.email         = ["verrtah@gmail.com"]

  spec.summary       = %q{Collects various view methods for the custom CMS apps I build.}
  spec.description   = %q{Provides generated HTML data for a custom Rails CMS app.}
  spec.homepage      = "https://github.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
