radio_engine.radioOn = true;
audio_play_sound(au_pickup, 1, false);

switch(dialogueID){
	case 1:
		obj_gm_dialogueBox.inDialogue = true;
		global.dialogueSize = 4;
		global.dialogueMessage[0] = "Hello? Can you hear me through this thing? You can? Alright, listen.";
		global.dialogueMessage[1] = "You fell through the game screen and are now on a side that you were never supposed to be on. I'll explain more later when we meet up.";
		global.dialogueMessage[2] = "See the gate in the top right corner? In order to open it, you have to stand upright on the red X on the left. Simply touching it won't do. As soon as you open it, proceed into the next room.";
		global.dialogueMessage[3] = "Getting around can be kind of tricky, so think your moves through instead of wildly thrashing about...";
		break;
	case 2:
		obj_gm_dialogueBox.inDialogue = true;
		global.dialogueSize = 2;
		global.dialogueMessage[0] = "Alright, now carefully avoid the black holes in the tiles. You don't want to stand upright on those. See the new X? It's orange, meaning you have to be two blocks high to activate it.";
		global.dialogueMessage[1] = "The two pads near the bottom of the room can change your size. After changing size and activating the orange X, go through the passage way on the right to enter my hideout.";
		break;
	case 3:
		obj_gm_dialogueBox.inDialogue = true;
		global.dialogueSize = 3;
		global.dialogueMessage[0] = "See that pipe? Things like that are littered around the facility.";
		global.dialogueMessage[1] = "In some cases, you can actually use that to navigate to different, hard-to-reach areas!";
		global.dialogueMessage[2] = "Try interacting with the pipe. Make sure to orient yourself parallel to the pipe's entrance.";
		break;
	case 4:
		obj_gm_dialogueBox.inDialogue = true;
		global.dialogueSize = 2;
		global.dialogueMessage[0] = "Alright! Great job on getting this far, you're almost out!" + 
									" All you have to do is make it to that final door at the end of this room and you're home free!";
		global.dialogueMessage[1] = "Be careful though! This room is filled to the brim with traps and turrets.";
		break;
}
instance_destroy();