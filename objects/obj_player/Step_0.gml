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
if(jumping_right and touching_right_wall){
	jumping_right = false
	jump_speed_horizontal = jump_speed_horizontal_min
	vertical_speed = 0
}
if(jumping_left and touching_left_wall){
	jumping_left = false
	jump_speed_horizontal = jump_speed_horizontal_min
	vertical_speed = 0
}
//check if charging jump
if(keyboard_check(vk_space) and not jumping_left and not jumping_right){
	jump_speed_horizontal = jump_speed_horizontal + jump_charge_speed
	if(jump_speed_horizontal > jump_speed_horizontal_max){
		jump_speed_horizontal = jump_speed_horizontal_max
	}
}
//check if jumped
if(keyboard_check_released(vk_space)){
	if(touching_left_wall){
		jumping_right = true
		vertical_speed = jump_vertical_speed
	}
	if(touching_right_wall){
		jumping_left = true
		vertical_speed = jump_vertical_speed
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
if((jumping_left or jumping_right) and keyboard_check_pressed(vk_space) and not attacking){
	attacking = true
	alarm[0] = attack_duration
	curr_sword = instance_create_depth(x, y, -100, obj_sword)
	y = y - (vertical_speed / attack_slowdown_coefficient)
	vertical_speed = vertical_speed - (jump_gravity / attack_slowdown_coefficient)
}

