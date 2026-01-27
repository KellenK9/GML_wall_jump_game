/// @description Insert description here
// You can write your code in this editor

if(position_meeting(mouse_x, mouse_y, obj_play_button)){
	image_index = 1
	if(mouse_check_button_pressed(mb_left)){
		room_goto_next()
	}
}else{
	image_index = 0
}
