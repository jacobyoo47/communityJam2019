/// @desc handles the player's movement out of a tube after entering one. Runs once per Player.size
/// @param exit_dir {int}

var dir = argument0;

switch (dir) {
	case 0: // exiting above pipe:
		Player.size++;
		Player.changeSize = true;
		Player.y -= g_size;
		break;
	case 1: // exiting to right of pipe:
		Player.size++;
		Player.changeSize = true;
		break;
	case 2: // exiting below pipe:
		Player.size++;
		Player.changeSize = true;
		break;
	case 3: // exiting left of pipe:
		Player.size++;
		Player.changeSize = true;
		Player.x -= g_size;
}