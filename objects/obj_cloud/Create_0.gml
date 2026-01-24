/// @description Insert description here
// You can write your code in this editor

depth = 500

x_speed = random(2) + 1
y_speed = 1
y = random(100)

if(random(2) > 1){
	moving_right = true
	x = obj_left_wall.x - sprite_width
}
else{
	moving_right = false
	x = obj_right_wall.x
}
