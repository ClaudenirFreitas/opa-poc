package main

import future.keywords
import data.policy.http.method_is_get
import data.policy.http.method_is_post
import data.policy.http.path_is_car
import data.policy.http.path_is_cars
import data.policy.role.user_is_employee
import data.policy.role.user_is_manager

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