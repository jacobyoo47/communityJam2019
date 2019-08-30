
if(!blockInPlay){
	blockInPlay = true;
	switch(loadedBlock){
		case 0:
			curBlock = instance_create_depth(320 + 192, 0, -1, obj_tetI);
			blockWidth = 32;
			blockHeight = 32*4;
			break;
		case 1:
			curBlock = instance_create_depth(320 + 192, 0, -1, obj_tetS);
			blockWidth = 32*3;
			blockHeight = 32*2;
			break;
		case 2:
			curBlock = instance_create_depth(320 + 192, 0, -1, obj_tetL);
			blockWidth = 64;
			blockHeight = 32*3;
			break;
		case 3:
			curBlock = instance_create_depth(320 + 192, 0, -1, obj_tetC);
			blockWidth = 32*2;
			blockHeight = 32*2;
			break;
	}
	loadedBlock = floor(random(4));
}
if(keyboard_check_pressed(vk_left)){
	with(curBlock){
		if(!place_meeting(x - 32, y, obj_tetrisBlock)){
			x -= 32;
		}
	}
}
if(keyboard_check_pressed(vk_right)){
	with(curBlock){
		if(!place_meeting(x + 32, y, obj_tetrisBlock)){
			x += 32;
		}
	}
}
if(keyboard_check(vk_down)){
	global.fallSpeed = 5;
}else{
	global.fallSpeed = 30;
}
if(keyboard_check_pressed(ord("Z"))){
	curBlock.image_angle += 90;
	lastRotation = 1;
	
}
if(keyboard_check_pressed(ord("C"))){
	curBlock.image_angle -= 90;
	lastRotation = 2;
	
}
switch(lastRotation){
	case 1:
		with(curBlock){
			if(place_meeting(x, y, obj_tetrisBlock)){
			image_angle -= 90;	
			}
		}
		lastRotation = 0;
		break;
	case 2:
		with(curBlock){
			if(place_meeting(x, y, obj_tetrisBlock)){
				image_angle += 90;	
			}
		}
		lastRotation = 0;
		break;
}