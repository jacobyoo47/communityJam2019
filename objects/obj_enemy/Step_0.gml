switch(behavior){
	case 0:
		//follow player
		if(x < Player.x){
			x += spd;	
		}
		if(x > Player.x){
			x -= spd;	
		}
		if(y < Player.y){
			y += spd;	
		}
		if(y > Player.y){
			y -= spd;	
		}
		break;
	case 1:
		//determine whether to grow vertically or horizontally
		if(abs(x - Player.x) >= (abs(y - Player.y - 4*global.gridSize))){
			behavior = 2;	
		}else{
			behavior = 3;
		}
		//behavior = 2;
		break;
	case 2:
		//lock in to grid
		x = x - x % global.gridSize;
		y = y - y % global.gridSize;
		instance_create_depth(x, y, 0, obj_wall);
		//determine to grow left or right
		if(x < Player.x){
			//y = Player.y;
			//x = Player.x - 16;
			var wall = instance_create_depth(x - 16, y, 0, obj_wall);
			wall.facing = 0;
		}else{
			//y = Player.y;
			//x = Player.x + 16;
			var wall = instance_create_depth(x + 16, y, 0, obj_wall);
			wall.facing = 2;
		}
		instance_destroy();
		break;
	case 3:
		//lock in to grid
		x = x - x % global.gridSize;
		y = y - y % global.gridSize;
		instance_create_depth(x, y, 0, obj_wall);
		//determine to grow up or down
		if(y < Player.y){
			//x = Player.x;
			//y = Player.y - 16;
			var wall = instance_create_depth(x, y - 16, 0, obj_wall);
			wall.facing = 1;
		}else{
			//x = Player.x;
			//y = Player.y + 16;
			var wall = instance_create_depth(x, y + 16, 0, obj_wall);
			wall.facing = 3;
		}
		instance_destroy();
		break;
}