package policy.http

import future.keywords

########### 
# methods #
###########
method_is_get(method) if {
	method == "GET"
}

method_is_post(method) if {
	method == "POST"
}

method_is_put(method) if {
	method == "PUT"
}

method_is_delete(method) if {
	method == "DELETE"
}

######### 
# paths #
#########
path_is_cars(path) if {
	path == ["cars"]
}

path_is_car(path) if {
	path = ["cars", carid]
}

path_is_car_status(path) {
	path = ["cars", carid, "status"]
}
