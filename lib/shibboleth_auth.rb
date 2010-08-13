#require 'action_pack'
#require 'shibboleth_auth'
module ShibbolethAuth
  extend ActiveSupport::Autoload

  autoload :LoginController, __FILE__.split('/')[0..-2].join('/')+'/../app/controllers/login_controller'
  autoload :ShibbolethUser, __FILE__.split('/')[0..-2].join('/')+'/../app/models/shibboleth_user'
  require 'generators/auth_generator'
  require 'routes'
  class Railtie < Rails::Railtie
  end
end