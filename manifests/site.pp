## site.pp ##

# Disable filebucket by default for all File resources:
File { backup => false }

node default {
  # Check if we've set the role for this node via trusted fact, pp_role.  If yes; include that role directly here.
  if !empty( $trusted['extensions']['pp_role'] ) {
    $role = $trusted['extensions']['pp_role']
    $project = $trusted['extensions']['pp_project']
    include ${project}::role::${role}
  }
}

# Uncomment the line below to enable ServiceNow Node Classification
# include servicenow_cmdb_integration::classification
