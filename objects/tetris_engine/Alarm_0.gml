stage++;
alarm_set(0, 240);
if(stage == 2){
	instance_create_depth(256, 256, -1, obj_recycling);
}