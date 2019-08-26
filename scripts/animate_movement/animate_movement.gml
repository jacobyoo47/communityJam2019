/// @param animation
/// @param newX
/// @param newY
/// @param new_animtargetX
/// @param new_animtargetY
/// @param newOrient

var anim = argument0;
var newX = argument1;
var newY = argument2;
var new_anim_targetX = argument3;
var new_anim_targetY = argument4;
var newOrient = argument5;

target_x = newX;
target_y = newY;
anim_targetX = new_anim_targetX;
anim_targetY = new_anim_targetY;
sprite_index = anim;
alarm[0] = 1;
inMotion = true;
c_orient = newOrient;