if (!trigger && place_meeting(x, y, Player) && !Player.inMotion && (Player.size == 1 || Player.c_orient==orient.up)) {
	switch_on = true;
	trigger = true;
	audio_play_sound(au_positive, 1, false);
} else if (!place_meeting(x, y, Player)){
	switch_on = false;
	trigger = false;
	//audio_play_sound(au_negative, 1, false);
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