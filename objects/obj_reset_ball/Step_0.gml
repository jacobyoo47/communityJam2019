if (!trigger && place_meeting(x, y, Player) && !Player.inMotion && (Player.c_orient == orient.up || Player.size == 1)) {
	with (obj_cube_ball) {
		if (ball_id == other.target_ball_id) {
			x = reset_x;
			y = reset_y;
		}
	}
	trigger = true;
	audio_play_sound(au_tube, 1, false);
} else if (!place_meeting(x, y, Player)) {
	trigger = false;	
}