/// @description Insert description here
// You can write your code in this editor

depth = 99

x_speed = random(0.1) + 0.05
y_speed = 0.1
y = random(100)

if(random(2) > 1){
	moving_right = true
	x = obj_left_wall.x - sprite_width
}
else{
	moving_right = false
	x = obj_right_wall.x
}
