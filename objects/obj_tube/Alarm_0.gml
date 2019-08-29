/// @desc handle tube transfer

if (Player.size > 1 && !Player.exiting) {
	show_debug_message("s1");
	handle_enter_tube(enter_dir);
	alarm[0] = split_time;
	
} else if (Player.size == 1 && !Player.exiting) {
	handle_init_exit_pos(exit_dir);
	Player.exiting = true;
	Player.visible = false;
	alarm[1] = split_time;
	
} else if (Player. exiting) {
	if (Player.size < current_size) {
		show_debug_message("s2");
		handle_exit_tube(exit_dir);
		alarm[0] = split_time;
		
	} else {
		canEnter = true;
		Player.canMove = true;
		Player.exiting = false;
	}
}