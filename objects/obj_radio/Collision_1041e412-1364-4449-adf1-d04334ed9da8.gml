radio_engine.radioOn = true;
audio_play_sound(au_pickup, 1, false);

switch(dialogueID){
	case 1:
		obj_gm_dialogueBox.inDialogue = true;
		global.dialogueSize = 4;
		global.dialogueMessage[0] = "Confused and alone, you pick up what looks like some sort of manual, and open it up. ( Press 'Z' to scroll through text )";
		global.dialogueMessage[1] = "\"TETRIS v.47-69: GUIDE TO SOFTLOCKING, PIECE TYPES, and GENERAL MAINTENANCE (vol. 1.5)\"";
		global.dialogueMessage[2] = 
		"\"CH. 1: 'MAINTENANCE ADVICE FOR IDIOTS'\nInevitably, (since, if you're reading this, you're an idiot who can't manage your own lot)" +
		" the tetris firmware will break at some point. Hell, maybe even a couple pieces will escape! (You idiot.)\"";
		global.dialogueMessage[3] = "\"If this ever happens, you're going to need to get into the maintenance area to do some sniffing around." +
		" Make sure to use the size changers (the little (-) and (+) pressure pads) to change your size so that getting around is easier. Remember that" +
		" in order to use these properly, you must stand up on them.\"";
		break;
	case 2:
		obj_gm_dialogueBox.inDialogue = true;
		global.dialogueSize = 1;
		global.dialogueMessage[0] = "\"CH. 2: 'WEIGHTED SWITCHES FOR THE ILLITERATE'\n" + 
		"When you're poking around down there, you're bound to run into some 'weighted switches'." +
		" Provided you can read (a bold assumption), simply step on the switch while you're the indicated size " +
		"(denoted by the roman numeral on the switch) to activate it.\"";
		break;
	case 3:
		obj_gm_dialogueBox.inDialogue = true;
		global.dialogueSize = 1;
		global.dialogueMessage[0] = "\"CH. 3: 'HOW TO NOT STEP IN A HOLE AND DIE (FOR DUMB DUMBS)'\n" +
		"If your lot is in VERY BAD disrepair, you'll eventually run into some holes in the ground. Let me make this easy for you: " +
		"DON'T step into the holes (not that it matters, since if you're an illiterate little shit and you DO step into one, you'll just respawn at the closest " +
		"CHECKTRIS^(tm) terminal).\"";
		break;
	case 4:
		obj_gm_dialogueBox.inDialogue = true;
		global.dialogueSize = 1;
		global.dialogueMessage[0] = "\"CH. 3.5: 'HOW TO NOT STEP IN A HOLE (ADDENDUM)'\n" +
		"Sometimes, you may need to CROSS a hole (shocking, I know). In order to do this, you're going to need to ju- " + 
		".. Nevermind. As long as your size is large enough that you can lie down over the hole without falling in it, you should be able to cross it just fine.\""
		break;
}
instance_destroy();