package todoApp.POST.todos

# This policy determines whether the user can create todos

default allowed := false

# Only members of the "resource-creators" instance can create a new Todo.

allowed if {
  ds.check({
    "object_type": "resource-creator",
    "object_id": "resource-creators",
    "relation": "member",
    "subject_type": "user",
    "subject_id": input.user.id
  })
}
