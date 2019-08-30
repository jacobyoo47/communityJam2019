/// @desc handles the player's entrance into the tube depending on enter_dir; code runs in Alarm event of obj_tube.
/// @param enter_dir {int}

var dir = argument0;

switch (dir) {
	case 0: // from above the pipe
		Player.size--;
		Player.changeSize = true;
		Player.y += g_size;
		break;
	case 1: // from the right of the pipe:
		Player.size--;
		Player.changeSize = true;
		break;
	case 2: // from below the pipe:
		Player.size--;
		Player.changeSize = true;
		break;
	case 3: // from the left of the pipe:
		Player.size--;
		Player.changeSize = true;
		Player.x += g_size;
		break;
}	