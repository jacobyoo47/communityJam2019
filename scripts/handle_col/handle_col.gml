/// @desc returns true if the player can move in the specified direction.
/// @param direction_id {int}

var dir = argument0;
var p_size = Player.size;
var p_orient = Player.c_orient;
var g_size = global.gridSize;
var col, col_i, col_buffer;
var ball;
var col_obj = obj_collision;
var ball_obj = obj_cube_ball;

switch (dir) {
	case 0: // moving up
		if (p_orient == orient.side_NS) {
			col = instance_position(x, y-g_size, col_obj);
			if (p_size > 1) ball = instance_position(x, y-g_size, ball_obj); // collision check for ball if size>1
			else ball = noone; 
			if (col == noone && ball == noone) return true;
			else return false;
			
		} else if (p_orient == orient.side_EW) {
			// check for possible collisions
			for (col_i=0; col_i<p_size; col_i++) {
				col_buffer = col_i * g_size;
				col = instance_position(x+col_buffer, y-g_size, col_obj);
				if (col != noone) return false;
			}
			return true; // if no collisions are found, return true.
			
		} else {
			// check for possible collisions
			for (col_i=1; col_i<p_size+1; col_i++) {
				col_buffer = col_i * g_size;
				col = instance_position(x, y-col_buffer, col_obj);
				if (p_size>1) ball = instance_position(x, y-col_buffer, ball_obj);
				else ball = noone;
				if (col != noone || ball != noone) return false;
			}
			return true;
		}
		break;
		
		
	case 1: // moving down
		if (p_orient == orient.side_NS) {
			col = instance_position(x, y+g_size*p_size, col_obj);
			if (p_size>1) ball = instance_position(x, y+g_size*p_size, ball_obj);
			else ball = noone;
			if (col == noone && ball == noone) return true;
			else return false;
			
		} else if (p_orient == orient.side_EW) {
			// check for possible collisions
			for (col_i=0; col_i<p_size; col_i++) {
				col_buffer = col_i * g_size;
				col = instance_position(x+col_buffer, y+g_size, col_obj);
				if (col != noone) return false;
			}
			return true; // if no collisions are found, return true.
			
		} else {
			// check for possible collisions
			for (col_i=1; col_i<p_size+1; col_i++) {
				col_buffer = col_i * g_size;
				col = instance_position(x, y+col_buffer, col_obj);
				if (p_size>1) ball = instance_position(x, y+col_buffer, ball_obj);
				else ball = noone;
				if (col != noone || ball != noone) return false;
			}
			return true;
		}
		break;
		
	
	case 2: // moving right
		if (p_orient == orient.side_NS) {
			// check for possible collisions
			for (col_i=0; col_i<p_size; col_i++) {
				col_buffer = col_i * g_size;
				col = instance_position(x+g_size, y+col_buffer, col_obj);
				if (col != noone) return false;
			}
			return true;
			
		} else if (p_orient == orient.side_EW) {
			col = instance_position(x+g_size*p_size, y, col_obj);
			if (p_size>1) ball = instance_position(x+g_size*p_size, y, ball_obj);
			else ball = noone;
			if (col == noone && ball == noone) return true;
			else return false;
			
		} else {
			// check for possible collisions
			for (col_i=1; col_i<p_size+1; col_i++) {
				col_buffer = col_i * g_size;
				col = instance_position(x+col_buffer, y, col_obj);
				if (p_size>1) ball = instance_position(x+col_buffer, y, ball_obj);
				else ball = noone;
				if (col != noone || ball != noone) return false;
			}
			return true;
		}
		break;
		
		
	case 3: // moving left
		if (p_orient == orient.side_NS) {
			// check for possible collisions
			for (col_i=0; col_i<p_size; col_i++) {
				col_buffer = col_i * g_size;
				col = instance_position(x-g_size, y+col_buffer, col_obj);
				if (col != noone) return false;
			}
			return true;
			
		} else if (p_orient == orient.side_EW) {
			col = instance_position(x-g_size, y, col_obj);
			if (p_size>1) ball = instance_position(x-g_size, y, ball_obj);
			else ball = noone;
			if (col == noone && ball == noone) return true;
			else return false;
			
		} else {
			// check for possible collisions
			for (col_i=1; col_i<p_size+1; col_i++) {
				col_buffer = col_i * g_size;
				col = instance_position(x-col_buffer, y, col_obj);
				if (p_size>1) ball = instance_position(x-col_buffer, y, ball_obj);
				else ball = noone;
				if (col != noone || ball != noone) return false;
			}
			return true;
		}
		break;
}

return true;