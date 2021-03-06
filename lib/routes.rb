module ActionDispatch::Routing
  class Mapper
    def shibboleth_routes
      match "/shibboleth_debug_login", :to => "shibboleth_auth/login#login_form", :via => :get, :as => "shibboleth_debug_login"
      match "/shibboleth_debug_login", :to => "shibboleth_auth/login#login", :via => :post, :as => "shibboleth_debug_login"
      match "/shibboleth_debug_logout", :to => "shibboleth_auth/login#logout", :as => "shibboleth_debug_logout"
      match "/shibboleth_debug_show", :to => "shibboleth_auth/login#show", :as => "shibboleth_debug_show"
    end
  end
end