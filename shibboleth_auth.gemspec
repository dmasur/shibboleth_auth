# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{shibboleth_auth}
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dominik Masur"]
  s.date = %q{2010-11-10}
  s.description = %q{Adds a Userobject and a debug Login/Logout to your Railsapplication}
  s.email = %q{masur@rz.rwth-aachen.de}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "app/controllers/login_controller.rb",
     "app/models/shibboleth_user.rb",
     "features/shibboleth_auth.feature",
     "features/step_definitions/shibboleth_auth_steps.rb",
     "features/support/env.rb",
     "lib/generators/auth_generator.rb",
     "lib/generators/templates/app/views/shibboleth_auth/login/login_form.html.haml",
     "lib/generators/templates/app/views/shibboleth_auth/login/show.html.haml",
     "lib/generators/templates/config/initializers/shibboleth_auth.rb",
     "lib/generators/templates/config/locales/de.yml",
     "lib/routes.rb",
     "lib/shibboleth_auth.rb",
     "shibboleth_auth.gemspec",
     "spec/shibboleth_auth_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/TBAA/shibboleth_auth}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Support for Shibboleth Auth}
  s.test_files = [
    "spec/shibboleth_auth_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_development_dependency(%q<cucumber>, [">= 0.8.5"])
      s.add_development_dependency(%q<haml>, [">= 3.0.0"])
      s.add_development_dependency(%q<formtastic>, [">= 1.0.0"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_dependency(%q<cucumber>, [">= 0.8.5"])
      s.add_dependency(%q<haml>, [">= 3.0.0"])
      s.add_dependency(%q<formtastic>, [">= 1.0.0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
    s.add_dependency(%q<cucumber>, [">= 0.8.5"])
    s.add_dependency(%q<haml>, [">= 3.0.0"])
    s.add_dependency(%q<formtastic>, [">= 1.0.0"])
  end
end

