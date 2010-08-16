class ShibbolethAuth::LoginController < ApplicationController

  # GET /shibboleth_auth/login
  def login_form
  end
  
  # GET /shibboleth_auth/show
  def show
  end

  # POST /shibboleth_auth/login
  def login
    # Adding Group Prefix
    groups = params["shibboleth_debug_login"][:groups].split(";").map do |group|
      ShibbolethAuth::GroupPrefixField + ":" + group unless group.include?(ShibbolethAuth::GroupPrefixField)
    end.join(";")
    
    session[:shibboleth_debug_env] = {
      ShibbolethAuth::UsernameField => params["shibboleth_debug_login"][:person_uid],
      ShibbolethAuth::CommonNameField => params["shibboleth_debug_login"][:person_common_name],
      ShibbolethAuth::GroupsField => groups,
      ShibbolethAuth::AffiliationField => params["shibboleth_debug_login"][:unscoped_affiliation],
      'debug_login' => true
    }
    session[:shibboleth_debug_login] = true
    redirect_to :root
  end

  # GET /shibboleth_auth/logout
  def logout
    session[:shibboleth_debug_login] = false
    session[:shibboleth_debug_env] = nil
    redirect_to :root
  end
end
