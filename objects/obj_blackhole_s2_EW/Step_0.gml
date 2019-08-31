if (place_meeting(x, y, Player) && Player.size == 2 && Player.c_orient == orient.side_EW && !Player.inMotion) {
	player_death();
} else if (place_meeting(x, y, Player) && (Player.size == 1 || Player.c_orient == orient.up) && !Player.inMotion) {
	player_death();
}