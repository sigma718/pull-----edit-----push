close = false
book_opens = true
global.tabs_popped = 0
global.tab_opened = 1
global.tab_pressed = false
global.tab_change = false
global.menu_opened = true
global.text_change = false
global.text_tab = 1
instance_deactivate_all(true)
instance_create_layer(room_width/2, room_height/2, "Instances", obj_menu_bg)
instance_create_layer(x, y, "Instances_1", obj_menu_text)
layer_set_visible("Assets_4", false)