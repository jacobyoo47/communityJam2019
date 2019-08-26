enum orient {
	side_NS		= 0,
	side_EW		= 1,
	up			= 2,
}

c_orient = orient.side_NS;

sprite_NSside = s_4_NS_n;
sprite_EWside = s_4_EW_n;
sprite_up = s_I_upright;

anim_1 = s_4_NS_rotupright_N;
anim_2 = s_4_NS_rotupright_S;

moveDelay = 0;
bulletDelay = 0;

size = 4;
changeSize = false;
canMove = true;
inMotion = false;

bullet_velocity = 8;

// grid based movement:
target_x = -1;
target_y = -1;

global.gridSize = 16; // width in pixels of each unit on the grid.
global.viewScale = 2;