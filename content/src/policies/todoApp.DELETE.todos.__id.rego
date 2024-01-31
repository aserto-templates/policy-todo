package todoApp.DELETE.todos.__id

# This policy determines whether the user can delete the todo identified by input.resource.id

import input.user
import input.resource
import data.todoApp.common.is_member_of
import data.todoApp.common.check

default allowed = false

# check if the user has the can_delete permission on the resource
# (example of evaluating a permission on a specific resource)
allowed {
  check(user, "can_delete", resource.object_id)
}

# check if the user is a member of the admin group
# (example of group-based RBAC)
allowed {
  is_member_of(user, "admin")
}
