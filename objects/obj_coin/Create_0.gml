/// @description move if touching tree

while(place_meeting(x, y, obj_tree)){
	x = obj_left_wall.x + (sprite_width/2) + 4 + random(room_width - sprite_width - (2 * obj_left_wall.x) - 8)
}