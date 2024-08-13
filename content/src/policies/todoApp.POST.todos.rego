package todoApp.POST.todos

# This policy determines whether the user can create todos

import data.todoApp.common.check

default allowed = false

# Only members of the "resource-creators" object can create a new Todo.

allowed {
  check(
    input.user,
    "member",
    "resource-creator",
    "resource-creators",
  )
}
