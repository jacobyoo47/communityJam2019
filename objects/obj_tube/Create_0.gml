g_size = global.gridSize;
target_x = 0;
target_y = 0;

split_time = 20;
startup = true;
current_size = 0;
canEnter = true;

exit_dir = 0;

tube_col = instance_create_layer(x, y, "Collisions", obj_collision);
with (tube_col) visible = false;

// ball transfer
current_ball = 0;

// debugging

//show_debug_message("ID: " + string(tube_id) + " with targetID " + string(exit_tube.tube_id));