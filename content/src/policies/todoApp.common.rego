package todoApp.common

is_member_of(user, group) := x {
  x := check(user, "member", "group", group)
}

check(user, permission, resource_type, resource_id) := x {
  # Returns true if the user has the specified permission (or relation) on the
  # object with the given type and id.
  x := ds.check({
    "object_type": resource_type,
    "object_id": resource_id,
    "relation": permission,
    "subject_type": "user",
    "subject_id": user.id
  })
}
