lKey = keyboard_check(vk_left);
rKey = keyboard_check(vk_right);
uKey = keyboard_check(vk_up);
dKey = keyboard_check(vk_down);

x_axis = rKey - lKey;
y_axis = dKey - uKey;

if (moveDelay > 0) {
	x_axis = 0;
	y_axis = 0;
} else if (x_axis != 0 || y_axis != 0) {
	moveDelay = 10;
}