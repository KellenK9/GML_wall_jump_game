/// 

draw_self()
//Draw blur
for(var _i=0;_i <swords_drawn; _i++){
	if(clockwise){
		rotation_var = image_angle + (_i * blur_width)
	}
	else{
		rotation_var = image_angle - (_i * blur_width)
	}
	alpha_var = 1 - (_i/swords_drawn)
	draw_sprite_ext(self.sprite_index, 0, x, y, 1, 1, rotation_var, c_white, alpha_var)
}