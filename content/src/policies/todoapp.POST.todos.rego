package todoApp.POST.todos

# This policy determines whether the user can create todos

default allowed = false

# Only members of the "resource-creators" instance can create a new Todo.
#
# Use the "Check" middleware convention
# The caller will pass in the following resource context:
# {
#   "object_type": "resource-creator",
#   "object_id": "resource-creators",
#   "relation": "member"
# }

allowed {
  ds.check({
    "object_type": input.resource.object_type,
    "object_id": input.resource.object_id,
    "relation": input.resource.relation,
    "subject_type": "user",
    "subject_id": input.user.id
  })
}
