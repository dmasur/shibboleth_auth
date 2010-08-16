
module ShibbolethAuth
  class ShibbolethUser
    attr_reader :username, :common_name, :groups, :affiliations

    def strip_group_prefix groups
      return groups.select do |s|
        s[0...ShibbolethAuth::GroupPrefixField.length] == ShibbolethAuth::GroupPrefixField
      end.map do |s|
        s[ShibbolethAuth::GroupPrefixField.length+1..-1]
      end
    end
    
    def initialize(env)
      # Development Settings
      if env["HTTP_HOST"] && ["localhost", "127.0.0.1"].any? {|url| env["HTTP_HOST"].include? url }
        @username = ShibbolethAuth::DevelopmentUsername
        @common_name = ShibbolethAuth::DevelopmentCommonName
        @groups = strip_group_prefix ShibbolethAuth::DevelopmentGroups
        @affiliations = ShibbolethAuth::DevelopmentAffiliation
      else
        env = env[:shibboleth_debug_env] || env
        @username = env[ShibbolethAuth::UsernameField]
        @common_name = env[ShibbolethAuth::CommonNameField]

        # strip the group prefix from groups
        @groups = strip_group_prefix(env[ShibbolethAuth::GroupsField] || '')

        @affiliations = (env[ShibbolethAuth::AffiliationField] || '').split(';')
      end
    end
  end
end
