if (!Player.has_gun) {
	obj_gm_dialogueBox.inDialogue = true;
	global.dialogueMessage[0] = "Acquired a L.E.M.O.N. Gun Mk. 47!";
	global.dialogueMessage[1] = "Try pressing 'Z' to fire it at that orb!";
	global.dialogueSize = 2;
	Player.has_gun = true;
	instance_destroy();
}