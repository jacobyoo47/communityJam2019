/*
if (startup) {
	with (obj_door) {
		if (int_id == other.target_id) {
			other.target_door = id;
			show_debug_message("successfully found door");
		}
	}
	startup = false;
}*/


if (place_meeting(x, y, Player) && !switch_on && Player.c_orient == orient.up && Player.size == switch_size && !Player.inMotion) {
	switch_on = true;
	trigger = true;
	with (obj_door) {
		if (int_id == other.target_id) {
			open = true;
		}
	}
	//target_door.open = true;
}

