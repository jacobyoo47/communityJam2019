/// @description GRID BASED MOVEMENT
if (x != target_x) {
	if (x < target_x) x++;
	else if (x > target_x) x--;
}
if (y != target_y) {
	if (y < target_y) y+=1;
	else if (y > target_y) y-=1;
}

if (x != target_x || y != target_y) {
	alarm[0] = 1;
} else {
	handle_size_change();
	inMotion = false;
}