
if (instance_exists(Player)) {
	if (distance_to_object(Player) < 16*3) {
		Player.current_checkpoint = id;
		Player.checkpoint_size = Player.size;
	}
}
