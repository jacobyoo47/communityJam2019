g_size = 16*2;

// important global var that stores current dialogue message:
global.dialogueMessage[0] = "Test Test Test Test Test Test Test Test Test Test Test Test Test TEST TEST TEST TEST TEST TEST TEST";
global.dialogueSize = 1;
current_page = 0;

global.viewScale = 2;
screen_width = display_get_gui_width();
screen_height = display_get_gui_height();
dialogue_sprite = s_DialogueBox;
dialogue_width = sprite_get_width(dialogue_sprite) * 2;
dialogue_height = sprite_get_height(dialogue_sprite) * 2;

show_dialogue_box = false;

dialogue_x = screen_width - dialogue_width - (g_size*2);
dialogue_y = screen_height - dialogue_height - g_size;
text_width = screen_width - dialogue_x*2 - g_size*2;

color = c_white;
text_col = c_black;

// for scrolling text
total_message_length = 0;
text_counter = 0; 
current_message = "";