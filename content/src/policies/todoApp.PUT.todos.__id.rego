package todoApp.PUT.todos.__id

# This policy determines whether the user can complete a specific todo identified by input.resource.id

import input.user
import input.resource
import future.keywords.in
import data.todoApp.common.is_member_of
import data.todoApp.common.check

default allowed = false

# check if the user has the can_write permission on the resource
# (example of evaluating a permission on a specific resource)
allowed {
  check(user, "can_write", resource.object_id)
}

# check if the user is a member of the allowed groups
# (example of group-based RBAC)
allowed {
  allowedGroups := { "admin", "evil_genius" }
  some group in allowedGroups
  is_member_of(user, group)
}
