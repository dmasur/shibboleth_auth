require 'rails'
module ShibbolethAuth
  extend ActiveSupport::Autoload

  autoload :LoginController, __FILE__.split('/')[0..-2].join('/')+'/../app/controllers/login_controller'
  require __FILE__.split('/')[0..-2].join('/')+'/../app/models/shibboleth_auth/shibboleth_user'
  require __FILE__.split('/')[0..-2].join('/')+'/generators/auth_generator'
  require 'routes'
  class Railtie < Rails::Railtie
  end
end