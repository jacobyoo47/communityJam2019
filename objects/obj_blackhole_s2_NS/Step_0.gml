if (place_meeting(x, y, Player) && ((Player.size == 1 || Player.c_orient = orient.up) || (Player.size == 2 && Player.c_orient==orient.side_NS)) && !Player.inMotion) {
	player_death();
}