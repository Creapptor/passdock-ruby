# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "passdock"
  s.version = "0.1.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Creapptor S.A."]
  s.date = "2013-02-08"
  s.description = "Talk with Passdock API"
  s.email = "info@creapptor.com"
  s.extra_rdoc_files = ["README.md", "lib/passdock.rb"]
  s.files = ["Manifest", "README.md", "Rakefile", "lib/passdock.rb", "passdock.gemspec"]
  s.homepage = "http://github.com/Creapptor/passdock-ruby"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Passdock", "--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "passdock"
  s.rubygems_version = "1.8.23"
  s.summary = "Talk with Passdock API"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
