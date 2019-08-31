if (show_dialogue_box) {
	draw_set_font(font_big);
	draw_sprite_ext(dialogue_sprite, -1, dialogue_x, dialogue_y, scale, scale, 0, color, 1);
	
	draw_set_color(text_col);
	draw_text_ext(dialogue_x+g_size, dialogue_y+g_size, current_message, g_size, text_width);
}