/// 

if(place_meeting(x, y, obj_player)){
	global.score += 100
	instance_destroy(self)
}

y += movement_speed
