/// @description Insert description here
// You can write your code in this editor

depth = 600

image_index = irandom(36)

x_speed = random(0.2) + 0.1
y_speed = 0.05
y = random(100) - 20

if(random(100) > 50){
	moving_right = true
	x = obj_left_wall.x - sprite_width
}
else{
	moving_right = false
	x = obj_right_wall.x
}
