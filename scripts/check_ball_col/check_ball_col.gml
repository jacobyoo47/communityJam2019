/// @param dir {int}

var dir = argument0;
var g_size = global.gridSize;

switch (dir) {
	case 0: // up
		if (place_meeting(x, y-g_size, obj_tube)) return true;
		if (place_meeting(x, y-g_size, obj_collision)) return false
		break;
	case 1: // right
		if (place_meeting(x+g_size, y, obj_tube)) return true;
		if (place_meeting(x+g_size, y, obj_collision)) return false;
		break;
	case 2: // down
		if (place_meeting(x, y+g_size, obj_tube)) return true;
		if (place_meeting(x, y+g_size, obj_collision)) return false;
		break;
	case 3: // left
		if (place_meeting(x-g_size, y, obj_tube)) return true;
		if (place_meeting(x-g_size, y, obj_collision)) return false;
		break;
}

return true;