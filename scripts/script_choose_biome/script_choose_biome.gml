// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pick_new_biome(_exclude_a, _exclude_b, _all_biomes, _num_biomes)
{
    var _biome;
    do
    {
        _biome = _all_biomes[irandom(_num_biomes - 1)];
    }
    until (_biome != _exclude_a && _biome != _exclude_b);

    return _biome;
}
