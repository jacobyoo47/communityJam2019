/// @param tube_entrance_dir {int}

var dir = argument0;
var check_key = keyboard_check_pressed(ord("U"));

switch (dir) {
	case 0: // up
		return (place_meeting(x, y-g_size, Player) && !Player.inMotion && 
				(Player.c_orient==orient.side_NS || Player.size==1) && check_key);
		break;
	case 1: // right
		return (place_meeting(x+g_size, y, Player) && !Player.inMotion && 
				(Player.c_orient==orient.side_EW || Player.size==1) && check_key);
		break;
	case 2: // down
		return (place_meeting(x, y+g_size, Player) && !Player.inMotion && 
				(Player.c_orient==orient.side_NS || Player.size==1) && check_key);
		break;
	case 3: // left
		return (place_meeting(x-g_size, y, Player) && !Player.inMotion &&
				(Player.c_orient==orient.side_EW || Player.size==1) && check_key);
}