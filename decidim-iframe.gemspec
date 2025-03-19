# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

require "decidim/iframe/version"

Gem::Specification.new do |s|
  s.version = Decidim::Iframe.version
  s.authors = ["Daniele Noto"]
  s.email = ["daniele.noto@eka.it"]
  s.license = "AGPL-3.0"
  s.homepage = "https://github.com/URBREATH/idragem"
  s.required_ruby_version = ">= 3.1"

  s.name = "idra"
  s.summary = "A decidim idra module"
  s.description = "Data catalogue collector for decidim"

  s.files = Dir["{app,config,lib,vendor,db}/**/*", "LICENSE-AGPLv3.txt", "Rakefile", "package.json", "README.md", "CHANGELOG.md"]

  s.add_dependency "decidim-admin", Decidim::Iframe.decidim_version
  s.add_dependency "decidim-core", Decidim::Iframe.decidim_version

  s.metadata["rubygems_mfa_required"] = "true"
end
