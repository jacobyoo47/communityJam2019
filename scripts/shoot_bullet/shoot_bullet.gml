/// @description shoots a bullet with set velocity from player
/// @param velocity {int}

var new_vel = argument0;
var bullet_layer = layer_get_id("Bullets");
var o_bullet = obj_Player_bullet
var g_size = global.gridSize;
var p_size = Player.size;
var bullet1, bullet2, bullet3, bullet4;
var pos_buffer = 4;

if (p_size == 1) {
	bullet1 = instance_create_layer(x+pos_buffer, y-g_size, bullet_layer, o_bullet);
	bullet2 = instance_create_layer(x+pos_buffer, y+g_size*p_size, bullet_layer, o_bullet);
	bullet3 = instance_create_layer(x-g_size, y+pos_buffer, bullet_layer, o_bullet);
	bullet4 = instance_create_layer(x+g_size*p_size, y+pos_buffer, bullet_layer, o_bullet);
	with (bullet1) {
		velocity = new_vel;
		dir = 0; // up
	}
	with (bullet2) {
		velocity = new_vel;
		dir = 2; // down
	}
	with (bullet3) {
		velocity = new_vel;
		dir = 3; // left
	}
	with (bullet4) {
		velocity = new_vel;
		dir = 1; // right
	}
	return true;
}

switch (c_orient) {
	case orient.side_NS: 
		bullet1 = instance_create_layer(x+pos_buffer, y-g_size, bullet_layer, o_bullet);
		bullet2 = instance_create_layer(x+pos_buffer, y+g_size*p_size, bullet_layer, o_bullet);
		with (bullet1) {
			velocity = new_vel;
			dir = 0; // up
		}
		with (bullet2) {
			velocity = new_vel;
			dir = 2; // down
		}
		return true;
		break;
		
	case orient.side_EW:
		bullet1 = instance_create_layer(x-g_size, y+pos_buffer, bullet_layer, o_bullet);
		bullet2 = instance_create_layer(x+g_size*p_size, y+pos_buffer, bullet_layer, o_bullet);
		with (bullet1) {
			velocity = new_vel;
			dir = 3; // left
		}
		with (bullet2) {
			velocity = new_vel;
			dir = 1; // right
		}
		return true;
		break;
		
	case orient.up:
		return false;
		break;
}