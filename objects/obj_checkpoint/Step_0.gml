

if (distance_to_object(Player) < global.gridSize*3) {
	Player.current_checkpoint = id;
	Player.checkpoint_size = Player.size;
}