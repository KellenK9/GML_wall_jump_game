/// 

global.score = 0
alarm[1] = 120
alarm[2] = 600
alarm[3] = 120
alarm[4] = 300

global.game_over = false
global.move_speed = 0.4
global.attack_radius = 16

game_over_sound_played = false

audio_play_sound(snd_game_music, 1, true)

_layer_speed = global.move_speed
all_biomes = [
	layer_get_id("wall_tiles1"),
	layer_get_id("wall_tiles2"),
	layer_get_id("wall_tiles3"),
	layer_get_id("wall_tiles4"),
	layer_get_id("wall_tiles5"),
	layer_get_id("wall_tiles6"),
	layer_get_id("wall_tiles7"),
]

_num_biomes = array_length(all_biomes)
for(var _biome_num = 0; _biome_num < _num_biomes; _biome_num += 1){
	biome = all_biomes[_biome_num]
	layer_y(biome, -192)
	layer_x(biome, 0)
}
curr_biome_layer = all_biomes[0]
next_biome_layer = all_biomes[1 + irandom(_num_biomes - 2)]
layer_y(curr_biome_layer, 0)
