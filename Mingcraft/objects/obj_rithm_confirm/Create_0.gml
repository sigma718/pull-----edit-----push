image_speed = 0 
free = true
if keyboard_check_pressed(global.rythm5) = true
{
if place_meeting(x, y, obj_rithm_wall) and free = true
{
	global.rithm_points = global.rithm_points + 300
	free = false
	image_index = 1
	alarm[0] = room_speed/5
}
}