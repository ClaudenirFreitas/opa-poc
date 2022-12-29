package test

import future.keywords
import data.main.allow

test_cars_read_positive if {
	input_data = {
		"method": "GET",
		"path": ["cars"],
		"user": "alice",
	}
	allow == true with input as input_data
}

test_cars_read_negative if {
	input_data = {
		"method": "GET",
		"path": ["nonexistent"],
		"user": "alice",
	}
	allow == false with input as input_data
}

test_car_create_negative if {
	input_data = {
		"method": "POST",
		"path": ["cars"],
		"user": "alice",
	}
	allow == false with input as input_data
}

test_car_create_positive if {
	input_data = {
		"method": "POST",
		"path": ["cars"],
		"user": "charlie",
	}
	allow == true with input as input_data
}

test_car_get_negative if {
	input_data = {
		"method": "GET",
		"path": ["cars", "id789-932"],
		"user": "nonexistent",
	}
	allow == false with input as input_data
}

test_car_get_positive if {
	input_data = {
		"method": "GET",
		"path": ["cars", "id789-932"],
		"user": "alice",
	}
	allow == true with input as input_data
}
