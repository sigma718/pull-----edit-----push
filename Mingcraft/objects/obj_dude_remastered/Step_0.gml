switch current_state
{
case 0:
if derection = 0 {sprite_index = spr_dude_idle; image_index = 0; image_speed = 0}
if derection = 1 {sprite_index = spr_dude_idle; image_index = 1; image_speed = 0}
break
case 1:
if derection = 0 {sprite_index = spr_dude_run_right; image_speed = 1}
if derection = 1 {sprite_index = spr_dude_run_left; image_speed = 1}
break
case 2:
if derection = 0 {sprite_index = spr_dude_walk_right; image_speed = 1}
if derection = 1 {sprite_index = spr_dude_walk_left; image_speed = 1}
break
case 3:
if derection = 0 {sprite_index = spr_dude_jump_left}
if derection = 1 {sprite_index = spr_dude_jump_right}
break
case 4:
if derection = 0 {sprite_index = spr_dude_jump_left; image_index = 6}
if derection = 1 {sprite_index = spr_dude_jump_right; image_index = 6}
break
}


current_state = 0
//if keyboard_key = 0 {current_state = 0}

if keyboard_check_pressed(global.sprint_shift) = true and global.can_sprint = true
{
if sprint_toggle = true {sprint_toggle = false}
else {sprint_toggle = true}
}

if keyboard_check(global.go_right) = true
{
derection = 0
//if place_meeting(x + 1, y, obj_platform_test) = false{
if sprint_toggle = true {if current_state != 3 and current_state != 4 {current_state = 1}; hspeed = hspeed + 0.5; hspeed = clamp(hspeed, 0, 10)}
if sprint_toggle = false {if current_state != 3 and current_state != 4 {current_state = 2}; hspeed = hspeed + 0.1; clamp(hspeed, 0, 3)}
}

if keyboard_check(global.go_left) = true
{
derection = 1
//if place_meeting(x - 1, y, obj_platform_test) = false{
if sprint_toggle = true {if current_state != 3 and current_state != 4 {current_state = 1}; hspeed = hspeed - 0.5; hspeed = clamp(hspeed, -10, 0)}
if sprint_toggle = false {if current_state != 3 and current_state != 4 {current_state = 2}; hspeed = hspeed + 0.1; hspeed = clamp(hspeed, -3, 0)}
}

if keyboard_check_pressed(global.jump) = true and current_state != 3 and current_state != 4 and jrecovered = true
{
jrecovered = false
current_state = 3
image_speed = 2
letzago = true
}

if letzago = true 
{
current_state = 3
if image_index >= 5 {image_speed = 0; image_index = 5}
y = y - 7	
jumper = jumper + 1
if jumper >= 15
{
letzzago = true
letzago = false
}
}

if letzzago = true
{
current_state = 3
y = y + yass
yass = yass + 0.5
if yass >= 0 {image_index = 6}
if yasss = true {yass = -5; letzzago = false; jrecover = true; yasss = false}
}

if jrecover = true
{
current_state = 3
image_speed = 1
if image_index = 9 
{
jumpy = 0
jumper = 0
letzago = false
letzzago = false
yass = -5
yasss = false
jrecover = false
alarm[0] = 1 //room_speed*0.05
}
}

if current_state != 3 and position_meeting(x, y + 1, obj_platform_test_remastered) = false or plsfall = true
{
current_state = 4
y = y + fall
fall = fall + 0.5
}
else
{fall = 0}

//if keyboard_check(vk_enter) = true
//{plsfall = false}

if keyboard_check(global.go_right) = false and keyboard_check(global.go_left = false)
{
hspeed = hspeed - hspeed/2
}