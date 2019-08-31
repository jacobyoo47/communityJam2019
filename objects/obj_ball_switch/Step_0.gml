/*if (startup) { // find target door
	with (obj_door) {
		if (int_id == other.target_door_id) other.target_door = id;
		show_debug_message("successfully found target door");
	}
	startup = false;
}*/

if (place_meeting(x, y, obj_cube_ball) && !trigger) {
	switch_on = true;
	trigger = true
	audio_play_sound(au_positive, 1, false);
} else if (!place_meeting(x, y, obj_cube_ball)) {
	switch_on = false;
	trigger = false;
}

if (target_door_id != -1 && switch_on) {
	with (obj_door) {
		if (int_id == other.target_door_id) open = true;
	}
} else if (target_door_id != -1 && !switch_on) {
	with (obj_door) {
		if (int_id == other.target_door_id) open = false;
	}
}