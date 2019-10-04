if (!switch_on) {
	switch (switch_size) {
		case 1: 
			draw_sprite_ext(sprite_index, 1, x, y, 1, 1, 0, s1_col, 1);
			break;
		case 2:
			draw_sprite_ext(sprite_index, 2, x, y, 1, 1, 0, s2_col, 1);
			break;
		case 3:
			draw_sprite_ext(sprite_index, 3, x, y, 1, 1, 0, s3_col, 1);
			break;
		case 4:
			draw_sprite_ext(sprite_index, 4, x, y, 1, 1, 0, s4_col, 1);
			break;
	}
} else {
	draw_sprite_ext(sprite_index, switch_size, x, y, 1, 1, 0, active_col, 1);
}