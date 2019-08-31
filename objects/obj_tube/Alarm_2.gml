/// @desc handle ball transfer
current_ball.visible = true;
audio_play_sound(au_tube, 1, false);

switch (exit_dir) {
	case 0: // up
		current_ball.x = target_x;
		current_ball.y = target_y-g_size;
		break;
	case 1: // right
		current_ball.x = target_x+g_size;
		current_ball.y = target_y;
		break;
	case 2: // down
		current_ball.x = target_x;
		current_ball.y = target_y+g_size;
		break;
	case 3: // left
		current_ball.x = target_x-g_size;
		current_ball.y = target_y;
		break;
}

alarm[3] = split_time;