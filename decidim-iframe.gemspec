# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

require "0.29.1"

Gem::Specification.new do |s|
  s.homepage = "https://github.com/URBREATH/decidim-idra"
  s.required_ruby_version = ">= 3.1"

  s.name = "idra"
  s.summary = "Idra gem for Decidim"

  s.files = Dir["{app,packs}/**/*", "LICENSE-AGPLv3.txt", "Rakefile", "package.json", "README.md", "CHANGELOG.md"]

  s.metadata["rubygems_mfa_required"] = "true"
end
