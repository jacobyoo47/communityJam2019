if (place_meeting(x, y, Player) && !Player.inMotion && (Player.size == 1 || Player.c_orient==orient.up)) {
	switch_on = true;
} else {
	switch_on = false;
}

if (switch_on) {
	with (obj_door) {
		if (int_id == other.target_id1) open = true;
		if (int_id == other.target_id2) open = false;
	}
} else if (!switch_on) {
	with (obj_door) {
		if (int_id == other.target_id1) open = false;
		if (int_id == other.target_id2) open = true;
	}
}