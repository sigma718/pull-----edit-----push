draw_self()
draw_set_halign(fa_left)
draw_set_valign(fa_center)
draw_set_font(global.fnt_pixel)
if hover = false and type = false {draw_set_color(c_dkgray)}
if hover = true or type = true {draw_set_color(c_black)}
draw_text(x - 75, y - 5, music)
draw_text(x - 60, y - 50, "Music Volume %")
if type = true
{draw_text(x - 100, y + 50, "Press enter to confirm")}