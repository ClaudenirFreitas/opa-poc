package rules

import future.keywords

user_is_employee(user) if {
	users[user]
}

user_is_manager(user) if {
	users[user].title == "manager"
}
