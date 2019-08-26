var grid_size = global.gridSize;

if (c_orient == orient.side_NS) {
	// check input
	if (x_axis > 0 && handle_col(2) && !inMotion) 
	animate_movement(NS_neutralspin_2, x+grid_size, y, x+grid_size, y, orient.side_NS);
	
	if (x_axis < 0 && handle_col(3) && !inMotion) 
	animate_movement(NS_neutralspin_1, x-grid_size, y, x-grid_size, y, orient.side_NS);
	
	if (y_axis > 0 && handle_col(1) && !inMotion) 
	animate_movement(NS_rotupright_S, x, y+grid_size*size, x, y+grid_size, orient.up);
	
	if (y_axis < 0 && handle_col(0) && !inMotion) 
	animate_movement(NS_rotupright_N, x, y-grid_size, x, y-grid_size, orient.up);


} else if (c_orient == orient.side_EW) {
	// check input
	if (x_axis > 0 && handle_col(2) && !inMotion) 
	animate_movement(EW_rotupright_E, x+grid_size*size, y, x+grid_size, y, orient.up);
	
	if (x_axis < 0 && handle_col(3) && !inMotion) 
	animate_movement(EW_rotupright_W, x-grid_size, y, x-grid_size, y, orient.up);
	
	if (y_axis > 0 && handle_col(1) && !inMotion) 
	animate_movement(EW_neutralspin_2, x, y+grid_size, x, y+grid_size, orient.side_EW);
	
	if (y_axis < 0 && handle_col(0) && !inMotion) 
	animate_movement(EW_neutralspin_1, x, y-grid_size, x, y-grid_size, orient.side_EW);

} else if (c_orient == orient.up) {
	// check input
	if (x_axis > 0 && handle_col(2) && !inMotion) 
	animate_movement(EW_rotdownward_E, x+grid_size, y, x+grid_size, y, orient.side_EW);
	
	if (x_axis < 0 && handle_col(3) && !inMotion) 
	animate_movement(EW_rotdownward_W, x-grid_size*size, y, x-grid_size, y, orient.side_EW);
	
	if (y_axis > 0 && handle_col(1) && !inMotion) 
	animate_movement(NS_rotdownward_S, x, y+grid_size, x, y+grid_size, orient.side_NS);
	
	if (y_axis < 0 && handle_col(0) && !inMotion) 
	animate_movement(NS_rotdownward_N, x, y-grid_size*size, x, y-grid_size, orient.side_NS);
	
}