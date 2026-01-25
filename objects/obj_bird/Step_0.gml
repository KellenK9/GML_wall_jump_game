/// @description Insert description here
// You can write your code in this editor

//Destroy when attacked - Add to all enemies
if(obj_player.attacking and distance_to_point(obj_player.x, obj_player.y) < global.attack_radius){
	obj_player.attacks_used = 0 // defeating an enemy resets your attack counter
	instance_destroy(self)
}

if(moving_right){
	x += flight_speed
}else{
	x -= flight_speed
}
