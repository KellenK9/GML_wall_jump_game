/// 

if(place_meeting(x, y, obj_player)){
	global.score += 200
	instance_destroy(self)
}

y += global.move_speed
