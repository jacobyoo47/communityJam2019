/// @desc handles initial exit pos for when the player exits a tube
/// @param exit_dir {int}

var dir = argument0;
var g_size = global.gridSize;

switch (dir) {
	case 0: // exit above pipe
		Player.x = target_x;
		Player.y = target_y - g_size;
		Player.c_orient = orient.side_NS;
		break;
	case 1: // exit to right of pipe
		Player.x = target_x + g_size;
		Player.y = target_y;
		Player.c_orient = orient.side_EW;
		break;
	case 2: // exit below pipe
		Player.x = target_x;
		Player.y = target_y + g_size;
		Player.c_orient = orient.side_NS;
		break;
	case 3: // exit to left of pipe
		Player.x = target_x - g_size;
		Player.y = target_y;
		Player.c_orient = orient.side_EW;
		break;
}