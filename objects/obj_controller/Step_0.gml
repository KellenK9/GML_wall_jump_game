///

if(alarm[0] < 0){
	alarm[0] = 2
}
if(alarm[1] < 0){
	alarm[1] = 300 + random(500)
}
if(alarm[2] < 0){
	alarm[2] = 600 + random(300)
}
if(alarm[3] < 0){
	alarm[3] = 600 + random(60)
}
if(alarm[4] < 0){
	alarm[4] = 200 + random(300)
}

if(global.game_over and not game_over_sound_played){
	audio_stop_sound(snd_game_music)
	audio_play_sound(snd_game_over, 1, false)
	game_over_sound_played = true
}

if(global.game_over and keyboard_check_pressed(vk_space)){
	audio_stop_all()
	room_restart()
}
