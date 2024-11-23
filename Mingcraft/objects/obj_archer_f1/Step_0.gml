if path_follow = 1{
	path = Archer_f1_1
}
if path_follow = 2{
	path = Archer_f1_2
}
if path_follow = 3{
	path = Archer_f1_3
}
if path_follow = 4{
	path = Archer_f1_4
}
if path_follow = 5{
	path = Archer_f1_5
}
if path_follow = 6{
	path = Archer_f1_6
}

path_start(path, speed, path_action_reverse, true)
if track = true
{	
	point = point_direction(x, y, obj_player.x, obj_player.y)
	walksp = 0
}

if track = false{
	//direction
	inputdirection = point_direction(0,0,keyright-keyleft, keydown-keyup);
	hsp = lengthdir_x( walksp, inputdirection) 
	vsp = lengthdir_y(walksp, inputdirection) 
	playercollision()
	#region Sprite animation
	//Running animation
	var _oldsprite = sprite_index
	if (inputmagnitude != 0)
	{
		direction = inputdirection
		sprite_index = spriterun
	}else{
		sprite_index = spriteidle
	}
	if(_oldsprite = spriteidle)
	{
		localframe = 0
	}
	//Image direction 
	Player_animation()
	#endregion
	#region Movement
	x += hsp
	y += vsp
	#endregion
}
diff = angle_difference(point, direction)
direction = direction + diff/15

if direction < 270 and direction > 90
{y_scale = -1}
else
{y_scale = 1}