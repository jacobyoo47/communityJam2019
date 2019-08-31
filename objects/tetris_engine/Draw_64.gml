if(gameOver){
	//show_debug_message("gay");
	draw_set_font(font_big);
	switch(stage){
		case 0:
			mainText = "You Lose!";
			break;
		case 1:
			mainText = "Resetting Game...";
			obj_tetrisCamera.y -= 4;
			break;
		case 2:
			mainText = "Recycling Extra Pieces...";
			obj_tetrisCamera.y -= 2;
			break;
		case 3:
			draw_set_color(c_red);
			mainText = "Rogue piece detected. Shutting down main thread...";
			break;
		case 4:
			audio_stop_sound(au_tetrisBack);
			room_goto(lvl1);
	}
	draw_text(gameOverX - string_width(mainText)/2, gameOverY, mainText);
}