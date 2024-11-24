point = 0
image_speed = 0 
speed = 12
alarm[0] = room_speed * 6
track = true
path_follow = random_range(1,6)
spin = false
x_scale = 1
y_scale = 1
diff = 0
active = true
hsp = 0
vsp = 0
spriteidle = spr_archer
localframe = 0

path_start(choose(Archer_f1_1,Archer_f1_2,Archer_f1_3,Archer_f1_4,Archer_f1_5,Archer_f1_6), 3, path_action_continue,true)