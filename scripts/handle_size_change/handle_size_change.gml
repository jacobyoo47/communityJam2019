var new_NS, new_EW;

switch (size) {
	case 4:
		new_NS = s_I_side_NS4;
		new_EW = s_I_side_EW4;
		break;
	case 3:
		new_NS = s_I_side_NS3;
		new_EW = s_I_side_EW3;
		break;
	case 2:
		new_NS = s_I_side_NS2;
		new_EW = s_I_side_EW2;
		break;
	case 1:
		new_NS = s_I_upright;
		new_EW = s_I_upright;
		break;
	case 0:
		// game ends if size reaches 0
		game_end();
		new_NS = s_I_upright;
		new_EW = s_I_upright;
		break;
}

sprite_EWside = new_EW;
sprite_NSside = new_NS;

switch (c_orient) {
	case orient.side_EW:
		sprite_index = new_EW;
		break;
	case orient.side_NS:
		sprite_index = new_NS;
		break;
	case orient.up:
		break;
}