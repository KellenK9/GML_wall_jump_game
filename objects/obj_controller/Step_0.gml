///

if(alarm[0] < 0){
	alarm[0] = 2
}
if(alarm[1] < 0){
	alarm[1] = 300 + random(500)
} 

if(global.game_over and keyboard_check_pressed(vk_space)){
	room_restart()
}
