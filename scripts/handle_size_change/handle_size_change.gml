var new_NS, new_EW, new_anim1, new_anim2;

switch (size) {
	case 4:
		new_NS = s_I_side_NS4;
		new_EW = s_I_side_EW4;
		new_anim1 = s_4rot1;
		new_anim2 = s_4rot2;
		break;
	case 3:
		new_NS = s_I_side_NS3;
		new_EW = s_I_side_EW3;
		new_anim1 = s_3rot1;
		new_anim2 = s_3rot2;
		break;
	case 2:
		new_NS = s_I_side_NS2;
		new_EW = s_I_side_EW2;
		new_anim1 = s_2rot1;
		new_anim2 = s_2rot2;
		break;
	case 1:
		new_NS = s_I_upright;
		new_EW = s_I_upright;
		new_anim1 = s_1rot1;
		new_anim2 = s_1rot2;
		break;
	case 0:
		// game ends if size reaches 0
		game_end();
		new_NS = s_I_upright;
		new_EW = s_I_upright;
		new_anim1 = s_1rot1;
		new_anim2 = s_1rot2;
		break;
}

sprite_EWside = new_EW;
sprite_NSside = new_NS;
anim_1 = new_anim1;
anim_2 = new_anim2;

switch (c_orient) {
	case orient.side_EW:
		sprite_index = new_EW;
		break;
	case orient.side_NS:
		sprite_index = new_NS;
		break;
	case orient.up:
		sprite_index = sprite_up;
		break;
}