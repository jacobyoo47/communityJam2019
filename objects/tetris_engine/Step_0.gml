// handle current tetris block
if(!blockInPlay && !gameOver){
	blockInPlay = true;
	switch(loadedBlock){
		case 0:
			curBlock = instance_create_depth(320 + 192, 736, -1, obj_tetI);
			blockWidth = 32;
			blockHeight = 32*4;
			break;
		case 1:
			curBlock = instance_create_depth(320 + 192, 736, -1, obj_tetS);
			blockWidth = 32*3;
			blockHeight = 32*2;
			break;
		case 2:
			curBlock = instance_create_depth(320 + 192, 736, -1, obj_tetL);
			blockWidth = 64;
			blockHeight = 32*3;
			break;
		case 3:
			curBlock = instance_create_depth(320 + 192, 736, -1, obj_tetC);
			blockWidth = 32*2;
			blockHeight = 32*2;
			break;
		case 4:
			curBlock = instance_create_depth(320 + 192, 736, -1, obj_tetS_mirror);
			//blockWidth = 32*3;
			//blockHeight = 32*2;
			break;
		case 5:
			curBlock = instance_create_depth(320 + 192, 736, -1, obj_tetL_mirror);
			break;
		case 6:
			curBlock = instance_create_depth(320 + 192, 736, -1, obj_tetK);
			break;
	}
	loadedBlock = floor(random(7));
}

if(firstCall && gameOver){
	alarm_set(0, 120);
	firstCall = false;
}

// handle block collisions/movement
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

// handle fast fall
if(keyboard_check(vk_down)){
	global.fallSpeed = 2;
}else{
	global.fallSpeed = 30;
}

// handle rotation
if(keyboard_check_pressed(ord("Z"))){
	curBlock.image_angle += 90;
	lastRotation = 1;
	
}
if(keyboard_check_pressed(ord("X"))){
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

// handle block storage
if (blockInPlay && keyboard_check_pressed(ord("C"))) {
	if (obj_storedBlock.show_block = false) { // if there is no stored block
		obj_storedBlock.current_block = curBlock;
		obj_storedBlock.show_block = true;
		blockInPlay = false;
	} else { // otherwise just switch the blocks
		temp_block = curBlock;
		curBlock = obj_storedBlock.current_block;
		curBlock.x = temp_block.x;
		curBlock.y = temp_block.y;
		obj_storedBlock.current_block = temp_block;
		//with(temp_block) instance_destroy();
	}
	
}