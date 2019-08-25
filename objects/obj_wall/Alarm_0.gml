var newX, newY;

//facing directions
//0 - left
//1 - up
//2 - right
//3 - down
var wall = instance_create_depth(x, y, 0, obj_wall);
show_debug_message(facing);
wall.facing = facing;

switch(facing){
	case 0:
		newX = -16;
		newY = 0;
		break;
	case 1:
		newX = 0;
		newY = -16;
		break;
	case 2:
		newX = 16;
		newY = 0;
		break;
	case 3:
		newX = 0;
		newY = 16;
		break;
}
wall.x = x + newX;
wall.y = y + newY;
//var oldface = facing;
