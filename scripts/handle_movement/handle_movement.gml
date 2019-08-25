var grid_size = global.gridSize;

if (c_orient == orient.side_NS) {
	// set sprite
	//sprite_index = sprite_NSside;
	
	// check input
	if (x_axis > 0) x += grid_size;
	if (x_axis < 0) x -= grid_size;
	if (y_axis > 0) {
		y += grid_size * 4;
		c_orient = orient.up;
		sprite_index = sprite_up;
	}
	if (y_axis < 0) {
		y -= grid_size;
		c_orient = orient.up;
		sprite_index = sprite_up;
	}
} else if (c_orient == orient.side_EW) {
	// set sprite
	//sprite_index = sprite_EWside;
	
	// check input
	if (x_axis > 0) {
		x += grid_size*4;
		c_orient = orient.up;
		sprite_index = sprite_up;
	}
	if (x_axis < 0) {
		x -= grid_size;
		c_orient = orient.up;
		sprite_index = sprite_up;
	}
	if (y_axis > 0) y += grid_size;
	if (y_axis < 0) y -= grid_size;
} else if (c_orient == orient.up) {
	// set sprite
	//sprite_index = sprite_up;
	//show_debug_message("poop");
	
	// check input
	if (x_axis > 0) {
		x += grid_size;
		c_orient = orient.side_EW;
		sprite_index = sprite_EWside;
	}
	if (x_axis < 0) {
		x -= grid_size*4;
		c_orient = orient.side_EW;
		sprite_index = sprite_EWside;
	}
	if (y_axis > 0) {
		y += grid_size;
		c_orient = orient.side_NS;
		sprite_index = sprite_NSside;
	}
	if (y_axis < 0) {
		y -= grid_size*4;
		c_orient = orient.side_NS;
		sprite_index = sprite_NSside;
	}
}