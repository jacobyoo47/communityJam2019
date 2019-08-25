switch (dir) {
	case 0: // up
		y -= velocity;
		break;
	case 1: // down
		y += velocity;
		break;
	case 2: // right
		x += velocity;
		break;
	case 3: // left
		x -= velocity;
		break;
}

if (place_meeting(x, y, obj_collision)) {
	instance_destroy();
}