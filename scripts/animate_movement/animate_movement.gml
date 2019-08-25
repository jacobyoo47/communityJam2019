/// @param animation
/// @param newX
/// @param newY
/// @param newOrient

var anim = argument0;
var newX = argument1;
var newY = argument2;
var newOrient = argument3;

target_x = newX;
target_y = newY;
sprite_index = anim;
alarm[0] = 1;
inMotion = true;
c_orient = newOrient;