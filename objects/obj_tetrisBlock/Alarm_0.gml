if(place_meeting(x, y + 16, obj_tetrisBlock)){
	if(y <= 736){
		tetris_engine.gameOver = true;	
		//show_debug_message("asdf");
	}
	
	isFalling = false;
	tetris_engine.blockInPlay = false;	
}



if(isFalling){
	
	y += 32;
	alarm_set(0, global.fallSpeed);
}