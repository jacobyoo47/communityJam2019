var grid_size = global.gridSize;

if (c_orient == orient.side_NS) {
	// check input
	if (x_axis > 0 && handle_col(2) && !inMotion) {
		animate_movement(anim_2, x+grid_size, y, orient.side_NS);
	}
	if (x_axis < 0 && handle_col(3) && !inMotion) {
		animate_movement(anim_2, x-grid_size, y, orient.side_NS);
	}
	if (y_axis > 0 && handle_col(1) && !inMotion) {
		animate_movement(anim_1, x, y+grid_size*size, orient.up);
	}
	if (y_axis < 0 && handle_col(0) && !inMotion) {
		animate_movement(anim_1, x, y-grid_size, orient.up);
	}


} else if (c_orient == orient.side_EW) {
	// check input
	if (x_axis > 0 && handle_col(2)) {
		x += grid_size*size;
		c_orient = orient.up;
		sprite_index = sprite_up;
	}
	if (x_axis < 0 && handle_col(3)) {
		x -= grid_size;
		c_orient = orient.up;
		sprite_index = sprite_up;
	}
	if (y_axis > 0 && handle_col(1)) y += grid_size;
	if (y_axis < 0 && handle_col(0)) y -= grid_size;


} else if (c_orient == orient.up) {
	// check input
	if (x_axis > 0 && handle_col(2)) {
		x += grid_size;
		c_orient = orient.side_EW;
		sprite_index = sprite_EWside;
	}
	if (x_axis < 0 && handle_col(3)) {
		x -= grid_size*size;
		c_orient = orient.side_EW;
		sprite_index = sprite_EWside;
	}
	if (y_axis > 0 && handle_col(1)) {
		y += grid_size;
		c_orient = orient.side_NS;
		sprite_index = sprite_NSside;
	}
	if (y_axis < 0 && handle_col(0)) {
		y -= grid_size*size;
		c_orient = orient.side_NS;
		sprite_index = sprite_NSside;
	}
}