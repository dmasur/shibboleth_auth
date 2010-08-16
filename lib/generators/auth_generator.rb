require 'rails/generators'
module ShibbolethAuth
  class InstallGenerator < Rails::Generators::Base

    desc = "
    Description:
      Copy rspec files to your application."

    def self.source_root
      File.join(File.dirname(__FILE__), 'templates')
    end
    def install_auth
      copy_file(
        'app/views/shibboleth_auth/login/login_form.html.haml',
        'app/views/shibboleth_auth/login/login_form.html.haml'
      )
      copy_file(
        'app/views/shibboleth_auth/login/show.html.haml',
        'app/views/shibboleth_auth/login/show.html.haml'
      )
      copy_file(
        'config/initializers/shibboleth_auth.rb',
        'config/initializers/shibboleth_auth.rb'
      )
    end

  end
end
