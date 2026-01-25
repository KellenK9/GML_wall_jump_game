/// @description Insert description here
// You can write your code in this editor

y += global.move_speed

if(y > room_height + sprite_height + 200){
	instance_destroy(self)
}
