if (startup) { // find target door
	with (obj_door) {
		if (int_id == other.target_door_id) other.target_door = id;
		show_debug_message("successfully found target door");
	}
	startup = false;
}

if (place_meeting(x, y, obj_cube_ball)) {
	switch_on = true;
} else {
	switch_on = false;
}

if (target_door_id != -1 && switch_on) {
	target_door.open = true;
} else if (target_door_id != -1 && !switch_on) {
	target_door.open = false;
}