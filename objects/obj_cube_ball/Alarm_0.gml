if (current_dist < target_dist && inMotion) {
	switch (bullet_dir) {
		case 0: // up
			y -= ball_speed;
			break;
		case 1: // right
			x += ball_speed;
			break;
		case 2: // down
			y += ball_speed;
			break;
		case 3: // left
			x -= ball_speed;
			break;
	}
	current_dist += ball_speed;
	alarm[0] = shift_speed;
} else {
	current_dist = 0;
	target_dist = 0;
	inMotion = false; 
	if (inTube) {
		alarm[1] = shift_speed;
	}

}