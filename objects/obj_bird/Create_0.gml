/// @description Insert description here
// You can write your code in this editor

if(random(100) > 50){
	x = -30
	moving_right = true
}else{
	x = room_width + 30
	image_xscale = -1
	moving_right = false
}

flight_speed = 0.4 + random(0.2)

spawn_height_buffer = sprite_height + 10
y = spawn_height_buffer + random(room_height - (2 * spawn_height_buffer))
