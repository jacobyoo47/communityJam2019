if (add) {
	if (place_meeting(x, y, Player) && !Player.inMotion && (Player.c_orient = orient.up || Player.size == 1) && !triggered) {
		triggered = true;
		if (Player.size < 4) {
			if (Player.size == 1) Player.c_orient = orient.up; // if player is 1x1 change to orient.up.
			Player.size++;
			Player.changeSize = true;
			instance_create_layer(Player.x, Player.y - global.gridSize, "FX", fx_size_increase);
			
		}
	} else if (!place_meeting(x, y, Player)) {
		triggered = false;
	}
	
} else {
	if (place_meeting(x, y, Player) && !Player.inMotion && Player.c_orient = orient.up && !triggered) {
		triggered = true;
		if (Player.size > 1) {
			Player.size--;
			Player.changeSize = true;
			instance_create_layer(Player.x, Player.y - global.gridSize, "FX", fx_size_decrease);
		}
	} else if (!place_meeting(x, y, Player)) {
		triggered = false;
	}	
}