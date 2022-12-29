package policy.http

import future.keywords

########### 
# methods #
###########
method_is_get(method) if {
	upper(method) == "GET"
}

method_is_post(method) if {
	upper(method) == "POST"
}

method_is_put(method) if {
	upper(method) == "PUT"
}

method_is_delete(method) if {
	upper(method) == "DELETE"
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
