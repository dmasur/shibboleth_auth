# Fieldnames from the enviroment (env)
ShibbolethAuth::UsernameField = 'HTTP_SHIB_INETORGPERSON_UID'
ShibbolethAuth::CommonNameField = 'HTTP_SHIB_PERSON_COMMONNAME'
ShibbolethAuth::GroupsField = 'HTTP_SHIB_EP_ENTITLEMENT'
ShibbolethAuth::AffiliationField = 'HTTP_SHIB_EP_UNSCOPEDAFFILIATION'

# This GroupPrefix will be cut off from every group and will be added on every group in the debug login formular
ShibbolethAuth::GroupPrefixField = 'my:prefix:group'

# Default values for the debug login formular
ShibbolethAuth::DebugDefaultUsername = 'ab123456'
ShibbolethAuth::DebugDefaultCommonName = 'Debug User'
ShibbolethAuth::DebugDefaultGroups = 'my:prefix:group:...'
ShibbolethAuth::DebugDefaultAffiliation = ''

# Default values for the development user
ShibbolethAuth::DevelopmentUsername = 'dev12345'
ShibbolethAuth::DevelopmentCommonName = 'Development User'
# As Array
ShibbolethAuth::DevelopmentGroups = ["my:prefix:group:..."]
# As Array
ShibbolethAuth::DevelopmentAffiliation = []

# Admin Users/Group
ShibbolethAuth::AdminUsers = %w(ab123456)
ShibbolethAuth::AdminGroups = %w(my:prefix:group:admins)