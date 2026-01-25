/// @description Spawn coin

x_spawn_pos = obj_left_wall.x + (sprite_width/2) + 1 + random(room_width - sprite_width - (2 * obj_left_wall.x) - 2)
instance_create_depth(x_spawn_pos, -16, 1, obj_coin)
