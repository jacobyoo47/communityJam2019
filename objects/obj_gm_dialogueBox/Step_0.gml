if (inDialogue && instance_exists(Player)) {
	Player.canMove = false;
	show_dialogue_box = true;
	total_message_length = string_length(global.dialogueMessage[current_page]);
	current_message = string_copy(global.dialogueMessage[current_page], 0, text_counter); 
} else if (!inDialogue && instance_exists(Player)) {
	Player.canMove = true;
	show_dialogue_box = false;
	text_counter = 0;
}

if (inDialogue && text_counter < total_message_length) {
	text_counter++;
	
	if (keyboard_check_pressed(ord("Z"))) text_counter = total_message_length;
	
} else if (inDialogue && text_counter == total_message_length) {
	if (keyboard_check_pressed(ord("Z")) && current_page < (global.dialogueSize-1)) {
		current_page++;
		text_counter = 0;
	} else if (keyboard_check_pressed(ord("Z"))) {
		current_page = 0;
		Player.canMove = true;
		inDialogue = false;
	}
}

// temp debugging
if (keyboard_check_pressed(ord("Y"))) inDialogue = !inDialogue;