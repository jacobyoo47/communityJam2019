switch(behavior){
	case 0:
		if(x < obj_test.x){
			x += spd;	
		}
		if(x > obj_test.x){
			x -= spd;	
		}
		if(y < obj_test.y){
			y += spd;	
		}
		if(y > obj_test.y){
			y -= spd;	
		}
		break;
	case 1:
		if(abs(x - obj_test.x) > abs(y - obj_test.y)){
			behavior = 2;	
		}else{
			behavior = 3;
		}
		//behavior = 2;
		break;
	case 2:
		if(x < obj_test.x){
			y = obj_test.y;
			x = obj_test.x - 16;
			var wall = instance_create_depth(x - 16, y, 0, obj_wall);
			wall.facing = 0;
		}else{
			y = obj_test.y;
			x = obj_test.x + 16;
			var wall = instance_create_depth(x + 16, y, 0, obj_wall);
			wall.facing = 2;
		}
		break;
	case 3:
		if(y < obj_test.y){
			x = obj_test.x;
			y = obj_test.y - 16;
			var wall = instance_create_depth(x, y - 16, 0, obj_wall);
			wall.facing = 1;
		}else{
			x = obj_test.x;
			y = obj_test.y + 16;
			var wall = instance_create_depth(x, y + 16, 0, obj_wall);
			wall.facing = 3;
		}
		break;
}