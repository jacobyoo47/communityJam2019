
if (!inMotion) {
	bullet_dir = other.dir;
	if (check_ball_col(bullet_dir)) {
		alarm[0] = shift_speed;
		target_dist = global.gridSize;
		inMotion = true;
	}
}
