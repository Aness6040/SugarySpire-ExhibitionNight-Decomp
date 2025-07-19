function scribble_whitelist_sprite(arg0)
{
    static _scribble_state = __scribble_initialize().__state;
    
    ds_map_set(_scribble_state.__sprite_whitelist_map, arg0, true);
}
