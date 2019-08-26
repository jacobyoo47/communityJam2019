var new_NS, new_EW, 
new_NS_rotupr_N, new_NS_rotupr_S, new_NS_rotdwr_N, new_NS_rotdwr_S, new_NS_nspin_1, new_NS_nspin_2,
new_EW_rotupr_E, new_EW_rotupr_W, new_EW_rotdwr_E, new_EW_rotdwr_W, new_EW_nspin_1, new_EW_nspin_2;

switch (size) {
	case 4:
		new_NS = s_4_NS_n;
		new_EW = s_4_EW_n;
		
		new_NS_rotupr_N = s_4_NS_rotupright_N;
		new_NS_rotupr_S = s_4_NS_rotupright_S;
		new_NS_rotdwr_N = s_4_NS_rotdownward_N;
		new_NS_rotdwr_S = s_4_NS_rotdownward_S;
		new_NS_nspin_1 = s_4_NS_rotleft;
		new_NS_nspin_2 = s_4_NS_rotright;
		
		new_EW_rotupr_E = s_4_EW_rotupright_E;
		new_EW_rotupr_W = s_4_EW_rotupright_W;
		new_EW_rotdwr_E = s_4_EW_rotdownward_E;
		new_EW_rotdwr_W = s_4_EW_rotdownward_W;
		new_EW_nspin_1 = s_4_EW_rotup;
		new_EW_nspin_2 = s_4_EW_rotdown;
		break;
	/*case 3: comment out until new sprites for other sizes are added
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
		break;*/
}

sprite_EWside = new_EW;
sprite_NSside = new_NS;

NS_rotupright_N = new_NS_rotupr_N;
NS_rotupright_S = new_NS_rotupr_S;
NS_rotdownward_N = new_NS_rotdwr_N;
NS_rotdownward_S = new_NS_rotdwr_S;
NS_neutralspin_1 = new_NS_nspin_1;
NS_neutralspin_2 = new_NS_nspin_2;

EW_rotupright_E = new_EW_rotupr_E;
EW_rotupright_W = new_EW_rotupr_W;
EW_rotdownward_E = new_EW_rotdwr_E;
EW_rotdownward_W = new_EW_rotdwr_W;
EW_neutralspin_1 = new_EW_nspin_1;
EW_neutralspin_2 = new_EW_nspin_2;

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