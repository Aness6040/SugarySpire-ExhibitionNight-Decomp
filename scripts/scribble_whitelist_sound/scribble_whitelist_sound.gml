function scribble_whitelist_sound(arg0)
{
    static _scribble_state = __scribble_initialize().__state;
    
    ds_map_set(_scribble_state.__sound_whitelist_map, arg0, true);
}
