enum orient {
	side_NS		= 0,
	side_EW		= 1,
	up			= 2,
}

c_orient = orient.side_NS;

sprite_NSside = s_I_side_NS4;
sprite_EWside = s_I_side_EW4;
sprite_up = s_I_upright;

anim_1 = s_4rot1;
anim_2 = s_4rot2;

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