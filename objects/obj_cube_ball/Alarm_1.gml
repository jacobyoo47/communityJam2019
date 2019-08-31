if (inTube && check_ball_col(bullet_dir)) {
	current_dist = 0;
	target_dist = global.gridSize;
	inMotion = true;
	
	alarm[0] = shift_speed;
} else {
	inMotion = false;
	inTube = false;
}