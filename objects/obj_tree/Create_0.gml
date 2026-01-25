/// @description Choose tree type

if(random(100) > 50){
	sprite_index = spr_tree1
	image_index = irandom(3)
}else{
	sprite_index = spr_tree2
	image_index = irandom(2)
}

if(random(100) > 50){
	image_xscale = -1
	x = obj_right_wall.x
}