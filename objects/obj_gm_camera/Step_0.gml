var c_x, c_y;

c_x = camera_get_view_x(gm_camera);
c_y = camera_get_view_y(gm_camera);

//show_debug_message(c_x+c_width);

// track player's position and adjust camera accordingly

if (instance_exists(Player)) {
	if (Player.x > (c_x+c_width)) camera_set_view_pos(gm_camera, c_x+c_width, c_y);
	if (Player.x < c_x) camera_set_view_pos(gm_camera, c_x-c_width, c_y);
	if (Player.y > (c_y+c_height)) camera_set_view_pos(gm_camera, c_x, c_y+c_height);
	if (Player.y < c_y) camera_set_view_pos(gm_camera, c_x, c_y-c_height);
}
