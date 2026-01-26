/// @description Insert description here
// You can write your code in this editor

depth = -1

left_wall_x = obj_left_wall.x + (sprite_width/2)
right_wall_x = obj_right_wall.x - (sprite_width/2)
x = left_wall_x

touching_left_wall = true
touching_right_wall = false
jumping_right = false
jumping_left = false

jump_speed_horizontal_min = 2
jump_speed_horizontal = jump_speed_horizontal_min
jump_speed_horizontal_max = 3
jump_charge_speed = 0.05
jump_vertical_speed = 3
jump_vertical_bounce_speed = 1.8
jump_gravity = 0.1
vertical_speed = 0
jump_rotation_speed = 4

attacking = false
attack_slowdown_coefficient = 5
attack_duration = 20
max_attacks = 1
attacks_used = 0

playing_hum = false
playing_fwoosh = false
alarm[1] = 6
