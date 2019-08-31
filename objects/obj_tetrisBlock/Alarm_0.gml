if(place_meeting(x, y + 16, obj_tetrisBlock)){
	if(y < 0){
		tetris_engine.gameOver = true;	
	}
	isFalling = false;
	tetris_engine.blockInPlay = false;	
}

if(isFalling){
	
	y += 32;
	alarm_set(0, global.fallSpeed);
}