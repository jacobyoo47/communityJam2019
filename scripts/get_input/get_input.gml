lKey = keyboard_check(vk_left);
rKey = keyboard_check(vk_right);
uKey = keyboard_check(vk_up);
dKey = keyboard_check(vk_down);

// handle diagonal movement - prioritize vertical movement
if (lKey && uKey) lKey = 0;
if (lKey && dKey) lKey = 0;
if (rKey && uKey) rKey = 0;
if (rKey && dKey) rKey = 0;

x_axis = rKey - lKey;
y_axis = dKey - uKey;

if (moveDelay > 0) {
	x_axis = 0;
	y_axis = 0;
} else if (x_axis != 0 || y_axis != 0) {
	moveDelay = 10;
}