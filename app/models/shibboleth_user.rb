
module ShibbolethAuth
class ShibbolethUser
  attr_reader :username, :name, :groups, :affiliation

  def initialize(env, group_prefix = 'urn:mace:rwth.de:perms:grp:')
    @username = env['HTTP_SHIB_INETORGPERSON_UID']

    @name = env['HTTP_SHIB_PERSON_COMMONNAME']

    # strip the group prefix from groups
    @groups = (env['HTTP_SHIB_EP_ENTITLEMENT'] || '').split(';').select do |s|
      s[0...group_prefix.length] == group_prefix
    end.map do |s|
      s[group_prefix.length..-1]
    end

    @affiliation = (env['HTTP_SHIB_EP_UNSCOPEDAFFILIATION'] || '').split(';')
  end
end
end