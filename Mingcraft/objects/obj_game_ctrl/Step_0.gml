if keyboard_check_pressed(global.esc) = true {
if global.menu_opened = false
{
	global.prevrh = room_height
	global.prevrw = room_width
	room_height = 1080
	room_width = 1920
	global.prevcamh = camera_get_view_height(view_camera[0])
	global.prevcamw = camera_get_view_width(view_camera[0])
	camera_set_view_size(view_camera[0], 1920, 1080)
	global.camposx = camera_get_view_x(view_camera[0])
	global.camposy = camera_get_view_y(view_camera[0])
	camera_set_view_pos(view_camera[0], 0, 0)
	instance_create_layer(room_width/2, room_height/2, "Instances", obj_menu)
}
}

if instance_exists(obj_menu) = false
{
	instance_destroy(obj_menu_tab_1)
	instance_destroy(obj_menu_tab_2)
	instance_destroy(obj_menu_tab_3)
	instance_destroy(obj_menu_bg)
}

if room = room_nothing 
{
room_goto(room_hub)
}