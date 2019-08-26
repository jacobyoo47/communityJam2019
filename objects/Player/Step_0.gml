show_debug_message(c_orient);
get_input();

if (canMove) handle_movement();

if (moveDelay > 0) {
	moveDelay--;
} 

// handle different sprites for different sizes
if (changeSize) {
	changeSize = false;
	handle_size_change();
}

// handle shooting
if (keyboard_check(ord("Z")) && bulletDelay == 0) {
	shoot_bullet(bullet_velocity);
	bulletDelay = 20;
}
if (bulletDelay > 0) {
	bulletDelay--;
}

// debugging
if (keyboard_check_pressed(ord("L")) && size != 4) {
	size += 1;
	changeSize = true;
}
if (keyboard_check_pressed(ord("K")) && size != 1) {
	size -= 1;
	changeSize = true;
}

