


if (place_meeting(x, y, Player) && Player.inMotion && !inMotion) {
	if (Player.y_axis < 0) { 
		dir = 0 // player moving up
	} else if (Player.x_axis > 0) {
		dir = 1 // player moving right
	} else if (Player.y_axis > 0) {
		dir = 2 // player moving down
	} else if (Player.x_axis < 0) {
		dir = 3 // player moving left
	}
	
	alarm[0] = shift_speed;
	target_dist = global.gridSize;
	inMotion = true;
}