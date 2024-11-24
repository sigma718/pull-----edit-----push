image_speed = 0

draw_self()

if place_meeting(x, y, obj_player) = true
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
{draw_text(x, y - 80, "Im boutta wattyasdaskjhslkfjsa")}

