package policy.role

import future.keywords
import data.repository.users

user_is_employee(user) if {
	users[user]
}

user_is_manager(user) if {
	users[user].title == "manager"
}
