enum orient {
	side_NS		= 0,
	side_EW		= 1,
	up			= 2,
}

c_orient = orient.side_NS;

sprite_NSside = s_I_side_NS;
sprite_EWside = s_I_side_EW;
sprite_up = s_I_upright;

moveDelay = 0;

global.gridSize = 16; // width in pixels of each unit on the grid.