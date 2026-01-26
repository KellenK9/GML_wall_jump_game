/// @description Insert description here
// You can write your code in this editor

//Destroy when attacked - Add to all enemies
if(obj_player.attacking and distance_to_point(obj_player.x, obj_player.y) < global.attack_radius){
	obj_player.attacks_used = 0 // defeating an enemy resets your attack counter
	obj_player.jump_speed_horizontal = min(0.5 + (obj_player.jump_speed_horizontal * 2), 3) // defeating an enemy boosts your horizontal speed
	if(sprite_index = spr_bird2){
		global.score += 100
	}else{
		global.score += 500
	}
	audio_play_sound(snd_pop, 1, false)
	instance_destroy(self)
}

if(moving_right){
	x += flight_speed
}else{
	x -= flight_speed
}
