var g_size = global.gridSize;
var newvel = bullet_velocity;

if (shoot_left) {
	var b1 = instance_create_layer(x-g_size/2, y+4, "Bullets", obj_turret_bullet);
	with (b1) {
		dir = 3;
		velocity = newvel;
	}
}

if (shoot_right) {
	var b2 = instance_create_layer(x+g_size, y+4, "Bullets", obj_turret_bullet);
	with (b2) {
		dir = 2;
		velocity = newvel;
	}
}

if (shoot_up) {
	var b3 = instance_create_layer(x+4, y-g_size, "Bullets", obj_turret_bullet);
	with (b3) {
		dir = 0;
		velocity = newvel;
	}
}

if (shoot_down) {
	var b4 = instance_create_layer(x+4, y+g_size, "Bullets", obj_turret_bullet);
	with (b4) {
		dir = 1;
		velocity = newvel;
	}
}

alarm[0] = delay;