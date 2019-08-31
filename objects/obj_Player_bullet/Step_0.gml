switch (dir) {
	case 0: // up
		y -= velocity;
		break;
	case 1: // right
		x += velocity;
		break;
	case 2: // down
		y += velocity;
		break;
	case 3: // left
		x -= velocity;
		break;
}

if (place_meeting(x, y, obj_collision)) {
	instance_destroy();
}
if (place_meeting(x, y, obj_cube_ball) && !triggered) {
	triggered = true;
	alarm[0] = 2;
}