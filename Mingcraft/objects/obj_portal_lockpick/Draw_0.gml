image_speed = 0

draw_self()

if place_meeting(x, y, obj_circle) = true
{
subimg = subimg + 1
pop = true
}
else 
{
subimg = subimg - 1
pop = false
}

subimg = clamp(subimg, 0, 11)

draw_sprite_ext(spr_textbox_1, subimg, x, y - 30, 1, 1, 0, c_white, 1)

draw_set_valign(fa_center)
draw_set_halign(fa_center)

if subimg = 11
{draw_text(x, y - 80, "Pick Lock")}

if pop = true and keyboard_check_pressed(global.interact) = true
{
global.spawnlocx = obj_circle.x
global.spawnlocy = obj_circle.y
room_goto(room_text_3)
}