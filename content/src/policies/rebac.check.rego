package rebac.check

import data.todoApp.common.check

# default to a closed system (deny by default)
default allowed = false

# resource context is expected in the following form:
# {
#   "object_type": "object type that carries the relation or permission",
#   "object_id": "id of object instance with type of object_type"
#   "relation": "relation or permission name",
# }
allowed {
  check(
    input.user,
    input.resource.relation,
    input.resource.object_type,
    input.resource.object_id,
  )
}
