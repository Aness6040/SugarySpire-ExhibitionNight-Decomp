function scribble_anim_jitter(arg0, arg1, arg2)
{
    static _array = __scribble_initialize().__anim_properties;
    static _scribble_state = __scribble_initialize().__state;
    
    if (arg0 != _array[(17 << 0)] || arg1 != _array[(18 << 0)] || arg2 != _array[(19 << 0)])
    {
        _array[(17 << 0)] = arg0;
        _array[(18 << 0)] = arg1;
        _array[(19 << 0)] = arg2;
        
        with (_scribble_state)
        {
            __shader_anim_desync = !__shader_anim_disabled;
            __shader_anim_desync_to_default = false;
        }
    }
}
