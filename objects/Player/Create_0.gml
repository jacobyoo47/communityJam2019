enum orient {
	side_NS		= 0,
	side_EW		= 1,
	up			= 2,
}

c_orient = orient.side_NS;

sprite_NSside = s_4_NS_n;
sprite_EWside = s_4_EW_n;
sprite_up = s_I_upright;

// animation sprites
NS_rotupright_N = s_4_NS_rotupright_N;
NS_rotupright_S = s_4_NS_rotupright_S;
NS_rotdownward_N = s_4_NS_rotdownward_N;
NS_rotdownward_S = s_4_NS_rotdownward_S;
NS_neutralspin_1 = s_4_NS_rotleft;
NS_neutralspin_2 = s_4_NS_rotright;

EW_rotupright_E = s_4_EW_rotupright_E;
EW_rotupright_W = s_4_EW_rotupright_W;
EW_rotdownward_E = s_4_EW_rotdownward_E;
EW_rotdownward_W = s_4_EW_rotdownward_W;
EW_neutralspin_1 = s_4_EW_rotup;
EW_neutralspin_2 = s_4_EW_rotdown;

moveDelay = 0;
bulletDelay = 0;

size = 4;
changeSize = false;
canMove = true;
inMotion = false;
m_dir = 0; // move direction for obj_ball

has_gun = false;

bullet_velocity = 8;

alarm_frame = 0; // for grid based animation movement
new_orient = -1;

// for tubes
exiting = false;

// grid based movement:
target_x = -1;
target_y = -1;
anim_targetX = -1;
anim_targetY = -1;

global.gridSize = 16; // width in pixels of each unit on the grid.
global.viewScale = 2;