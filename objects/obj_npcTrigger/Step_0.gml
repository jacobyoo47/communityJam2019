if (place_meeting(x, y, Player) && !triggered) {
	Player.canMove = false;
	Player.visible = false;
	triggered = true;
	draw_fx = true;
	alarm[0] = 180
}