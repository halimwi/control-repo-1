## site.pp ##

# Disable filebucket by default for all File resources:
File { backup => false }

node default {
#  if !empty( $trusted['extensions']['pp_project'] ) {
#    $role = $trusted['extensions']['pp_role']
#    $project = $trusted['extensions']['pp_project']
#    include profile::platform::baseline
#    include "${project}::role::${role}"
#  }
}

# Uncomment the line below to enable ServiceNow Node Classification
include servicenow_cmdb_integration::classification
