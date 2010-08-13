class ShibbolethAuth::LoginController < ApplicationController
  
  # GET /shibboleth_auth/login
  def login_form
  end

  # POST /shibboleth_auth/login
  def login
    
      groups = params[:groups].split(";").map do |group| 
        ShibbolethAuth::GroupPrefixField + ":" + group unless group.include?(ShibbolethAuth::GroupPrefixField)
      end.join(";")
    session[:shibboleth_debug_env] = {
      'HTTP_SHIB_INETORGPERSON_UID' => 'ml875530',
      'HTTP_SHIB_PERSON_COMMONNAME' => 'Matthias Alexander Lederhofer',
      'HTTP_SHIB_EP_ENTITLEMENT' => groups,
      'HTTP_SHIB_EP_UNSCOPEDAFFILIATION' => 'member;student;employee',
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
