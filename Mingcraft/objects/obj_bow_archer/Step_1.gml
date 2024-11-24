if (instance_exists(obj_player)){
	x = obj_player.x
	y = obj_player.y
}else{
	instance_destroy()
}
image_angle = point_direction(x,y,)

firingdelay = firingdelay - 1
recoil = max(0, recoil - 1)

if(mouse_check_button(mb_left)) and (firingdelay < 0){
	firingdelay = 10
	recoil = 4
	with (instance_create_layer(x,y,"Bullets", obullet)){
		speed = 25
		direction = other.image_angle + random_range(-3,3)
		image_angle = direction
	}
}
		
x = x-lengthdir_x(recoil, image_angle)
y = y - lengthdir_y(recoil, image_angle)
if (image_angle > 90) and (image_angle < 270){
	image_yscale = -1
}else{
	image_yscale = 1
}