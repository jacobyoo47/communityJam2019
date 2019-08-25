var grid_size = global.gridSize;

if (c_orient == orient.side_NS) {
	// check input
	if (x_axis > 0 && handle_col(2)) x += grid_size;
	if (x_axis < 0 && handle_col(3)) x -= grid_size;
	if (y_axis > 0 && handle_col(1)) {
		y += grid_size*size;
		c_orient = orient.up;
		sprite_index = sprite_up;
	}
	if (y_axis < 0 && handle_col(0)) {
		y -= grid_size;
		c_orient = orient.up;
		sprite_index = sprite_up;
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