track = true
path_speed = 0
point = point_direction(x,y,obj_player.x,obj_player.y)
if (point <= 90 or point >= 270){
	sprite_index = spr_archerR
	image_xscale = -1
}
alarm[1] = room_speed