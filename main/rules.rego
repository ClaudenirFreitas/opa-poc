package main

import future.keywords
import data.policy.http
import data.policy.role

default allow = false

allow if {
	http.method_is_get(input.method)
	http.path_is_cars(input.path)
}

allow if {
	http.method_is_post(input.method)
	http.path_is_cars(input.path)
	role.user_is_manager(input.user)
}

allow if {
	http.method_is_get(input.method)
	http.path_is_car(input.path)
    role.user_is_employee(input.user)
}