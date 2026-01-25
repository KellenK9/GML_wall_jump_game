/// @description Destroy when off screen

if(y > room_height + sprite_height + 200){
	instance_destroy(self)
}
if(y < 0 - sprite_height - 200){
	instance_destroy(self)
}
if(x > room_width + sprite_width + 200){
	instance_destroy(self)
}
if(x < 0 - sprite_width - 200){
	instance_destroy(self)
}
