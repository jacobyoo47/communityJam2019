var new_vel = bullet_vel;

if (bulletDelay > 0) {
	bulletDelay--;
}

if (shoot_vertical && check_turret_range(0) && bulletDelay==0) {
	var bullet1 = instance_create_layer(x+4, y-g_size, bullet_layer, bullet_obj);
	var bullet2 = instance_create_layer(x+4, y+g_size, bullet_layer, bullet_obj);
	with (bullet1) {
		velocity = new_vel;
		dir = 0;
	}
	with (bullet2) {
		velocity = new_vel;
		dir = 1;
	}
	bulletDelay = setDelay;
}

if (shoot_horiz && check_turret_range(1) && bulletDelay==0) {
	var bullet1 = instance_create_layer(x+g_size, y+4, bullet_layer, bullet_obj);
	var bullet2 = instance_create_layer(x-g_size, y+4, bullet_layer, bullet_obj);
	with (bullet1) {
		velocity = new_vel;
		dir = 2;
	}
	with (bullet2) {
		velocity = new_vel;
		dir = 3;
	}
	bulletDelay = setDelay;
}