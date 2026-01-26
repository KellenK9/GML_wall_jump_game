// Check if touching wall
if x <= left_wall_x{
	x = left_wall_x
	touching_left_wall = true
}else{
	touching_left_wall = false
}
if x >= right_wall_x{
	x = right_wall_x
	touching_right_wall = true
}else{
	touching_right_wall = false
}
//check if just reached wall
if((jumping_left and touching_left_wall) or (jumping_right and touching_right_wall)){
	jumping_left = false
	jumping_right = false
	jump_speed_horizontal = jump_speed_horizontal_min
	vertical_speed = 0
	attacks_used = 0
	attacking = false
	instance_destroy(obj_sword)
}
//check if charging jump
if(keyboard_check(vk_space) and not jumping_left and not jumping_right){
	jump_speed_horizontal = jump_speed_horizontal + jump_charge_speed
	if(jump_speed_horizontal > jump_speed_horizontal_max){
		jump_speed_horizontal = jump_speed_horizontal_max
	}
}
//check if jumped
if(keyboard_check_released(vk_space) and not global.game_over){
	if(touching_left_wall){
		jumping_right = true
		vertical_speed = jump_vertical_speed
		image_angle = 0
	}
	if(touching_right_wall){
		jumping_left = true
		vertical_speed = jump_vertical_speed
		image_angle = 0
	}
}
//move when jumping
if(jumping_right){
	if(attacking){
		x = x + (jump_speed_horizontal / attack_slowdown_coefficient)
	}else{
		x = x + jump_speed_horizontal
	}
}
if(jumping_left){
	if(attacking){
		x = x - (jump_speed_horizontal / attack_slowdown_coefficient)
	}else{
		x = x - jump_speed_horizontal
	}
}
if(jumping_right or jumping_left){
	if(not attacking){
		y = y - vertical_speed
		vertical_speed = vertical_speed - jump_gravity
	}
}
//check if attacking
if((jumping_left or jumping_right) and keyboard_check_pressed(vk_space) and not attacking and attacks_used < max_attacks and not global.game_over){
	attacking = true
	alarm[0] = attack_duration
	curr_sword = instance_create_depth(x, y, -100, obj_sword)
	attacks_used += 1
	if(vertical_speed > 0){
		vertical_speed = 0
	}
}
//bump head on top of screen
if((jumping_left or jumping_right) and y < sprite_height/2 and vertical_speed > 0){
	vertical_speed = 0
}
//lose when below screen
if(y > room_height + (sprite_height/2)){
	global.game_over = true
}
//Dictate appearance
if(jumping_left or jumping_right){
	jump_rotation_speed = 1.4 * jump_speed_horizontal
}
if(touching_left_wall){
	image_angle = 270
	image_xscale = -1
}
else{
	image_xscale = 1
}
if(touching_right_wall){
	image_angle = 90
}
if(jumping_right){
	sprite_index = spr_ninja_blue_idle
	if(not attacking){
		image_angle = image_angle - jump_rotation_speed
	}
}
if(jumping_left){
	sprite_index = spr_ninja_blue_idle
	if(not attacking){
		image_angle = image_angle + jump_rotation_speed
	}
}
else{
	sprite_index = spr_ninja_blue_run
}
// Tree pushes player down while running
if(place_meeting(x, y, obj_collision_parent) and not jumping_right and not jumping_left){
	// if right above tree, move character up
	if(not place_meeting(x, y - 8, obj_collision_parent)){
		for(var _i = 0; _i < 8; _i+=0.1){
			if(place_meeting(x, y - _i, obj_collision_parent)){
				y = y - 0.1
			}
		}
	}
	// if right below a tree, move character down
	if(place_meeting(x, y, obj_collision_parent) and not place_meeting(x, y + 8, obj_collision_parent)){
		for(var _i = 0; _i < 8; _i+=0.1){
			if(place_meeting(x, y + _i, obj_collision_parent)){
				y = y + 0.1
			}
		}
	}
}else{
	// Tree collision while jumping
	if(place_meeting(x, y, obj_collision_parent)){
		//Bounce off tree if coming at side
		if(jumping_left and not place_meeting(x + 8, y, obj_collision_parent)){
			jumping_left = false
			jumping_right = true
			vertical_speed = jump_vertical_bounce_speed
			attacks_used = 0
			audio_play_sound(snd_bounce, 1, false)
		}
		if(jumping_right and not place_meeting(x - 8, y, obj_collision_parent)){
			jumping_right = false
			jumping_left = true
			vertical_speed = jump_vertical_bounce_speed
			attacks_used = 0
			audio_play_sound(snd_bounce, 1, false)
		}
		// if right above tree, bounce
		if(not place_meeting(x, y - 8, obj_collision_parent)){
			if(jump_speed_horizontal > 0.5){ // if falling, don't interact with tree
				vertical_speed = jump_vertical_bounce_speed
				attacks_used = 0
				audio_play_sound(snd_bounce, 1, false)
			}
		}
		// if right below a tree, move character down
		if(place_meeting(x, y, obj_collision_parent) and (not place_meeting(x, y + 16, obj_collision_parent) or not place_meeting(x + 8, y + 8, obj_collision_parent) or not place_meeting(x - 8, y + 8, obj_collision_parent)) and place_meeting(x, y - 8, obj_collision_parent) and place_meeting(x + 4, y - 4, obj_collision_parent) and place_meeting(x - 4, y - 4, obj_collision_parent)){
			for(var _i = 0; _i < 8; _i+=0.1){
				if(place_meeting(x, y + _i, obj_collision_parent)){
					y = y + 0.1
				}
			}
			jump_speed_horizontal = jump_speed_horizontal * 0.8
			vertical_speed = vertical_speed * 0.8
		}
	}
}
// Collide with enemies while running, knocking player off wall
if(place_meeting(x, y, obj_enemy_parent)){
	if(not attacking){
		if(not jumping_right and not jumping_left){
			if(touching_left_wall){
				jumping_right = true
			}
			if(touching_right_wall){
				jumping_left = true
			}
		}else{
			// Collide with enemies while jumping, knocking them out of the sky
			jump_speed_horizontal = jump_speed_horizontal * 0.8
		}
	}
}
