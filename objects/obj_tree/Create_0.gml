/// @description Choose tree type

buried_tree_width = 2
depth = 550
y = -100
tree_transparency = 0.4

if(random(100) > 50){
	sprite_index = spr_tree1
	image_index = irandom(3)
}else{
	sprite_index = spr_tree2
	image_index = irandom(2)
	if(random(100) > 50){ // this tree sprite can be upside-down
		image_yscale = -1
	}
}

if(random(100) > 50){
	image_xscale = -1
	x = obj_right_wall.x + buried_tree_width
}
else{
	x = obj_left_wall.x - buried_tree_width
}
