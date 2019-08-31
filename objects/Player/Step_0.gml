
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
if (keyboard_check_pressed(ord("Z")) && bulletDelay == 0 && canMove && has_gun) {
	audio_play_sound(au_positive, 1, false);
	shoot_bullet(bullet_velocity);
	bulletDelay = 20;
}
if (bulletDelay > 0) {
	bulletDelay--;
}

// reset button
if (keyboard_check_pressed(ord("R"))) {
	player_death();
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

