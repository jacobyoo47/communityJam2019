if(place_meeting(x, y + 32, obj_tetrisBlock)){
	isFalling = false;
	tetris_engine.blockInPlay = false;	
}

if(isFalling){
	
	y += 32;
	alarm_set(0, global.fallSpeed);
}