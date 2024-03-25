package todoApp.common

import future.keywords.if

is_member_of(user, group) := x if {
  x := ds.check({
    "object_id": group,
    "object_type": "group",
    "relation": "member",
    "subject_id": user.id,
    "subject_type": "user"
  })
}

check(user, permission, todo) := x if {
  x := ds.check({
    "object_id": todo,
    "object_type": "resource",
    "relation": permission,
    "subject_id": user.id,
    "subject_type": "user"
  })
}
