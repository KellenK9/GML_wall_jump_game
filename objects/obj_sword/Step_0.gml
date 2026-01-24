/// Move

x = obj_player.x
y = obj_player.y

if(clockwise){
	image_angle = image_angle - (360 / (obj_player.attack_duration-1))
}else{
	image_angle = image_angle + (360 / (obj_player.attack_duration-1))
}