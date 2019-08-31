if (canEnter) {
	canEnter = false;
	other.inMotion = false;
	current_ball = other.id;
	current_ball.inTube = true;
	current_ball.visible = false;
	current_ball.inMotion = false;
	//current_ball.bullet_dir = exit_dir;
	audio_play_sound(au_tube, 1, false);
	alarm[2] = split_time;
}