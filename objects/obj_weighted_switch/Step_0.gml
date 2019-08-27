
if (place_meeting(x, y, Player) && !switch_on && Player.c_orient == orient.up && Player.size == switch_size && !Player.inMotion) {
	switch_on = true;
	trigger = true;
}