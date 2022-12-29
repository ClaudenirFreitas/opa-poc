package rules

import future.keywords

default allow = false

allow if {
	method_is_get(input.method)
	path_is_cars(input.path)
}

allow if {
	method_is_post(input.method)
	path_is_cars(input.path)
	user_is_manager(input.user)
}

allow if {
	method_is_get(input.method)
	path_is_car(input.path)
    user_is_employee(input.user)
}