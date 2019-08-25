/// @param direction- 0=vert, 1=horiz {int}

var dir = argument0;

var i, grid_buffer;
var g_size = global.gridSize;
switch (dir) {
	case 0: // vertical
		for (i=1; i<=range; i++) {
			// check for player in range
			grid_buffer = i*g_size;
			if (place_meeting(x, y+grid_buffer, Player)) return true;
			if (place_meeting(x, y-grid_buffer, Player)) return true;
		}
		break;
	case 1: // horizontal
		for (i=1; i<=range; i++) {
			// check for player in horizontal range
			grid_buffer = i*g_size;
			if (place_meeting(x+grid_buffer, y, Player)) return true;
			if (place_meeting(x-grid_buffer, y, Player)) return true;
		}
		break;
}

return false;