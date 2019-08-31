
if (startup) { // find target tube's x & y values once after instance is created.
	with (obj_tube) {
		if (tube_id == other.target_tube_id) {
			other.target_x = x;
			other.target_y = y;
			other.exit_dir = enter_dir;
		}
	}
	
	startup = false;
}




if (check_tube_input(enter_dir) && !Player.exiting && canEnter && can_access) {
	canEnter = false;
	Player.canMove = false;
	current_size = Player.size;
	alarm[0] = split_time;
}
//show_debug_message(string(tube_id) + "," + string(target_x) + "," + string(target_y));