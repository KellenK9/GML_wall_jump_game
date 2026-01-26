/// 

if(place_meeting(x, y, obj_player)){
	global.score += 200
	audio_play_sound(snd_coin, 1, false)
	instance_destroy(self)
}

y += global.move_speed
