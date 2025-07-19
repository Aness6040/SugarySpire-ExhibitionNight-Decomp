function scribble_anim_shake(arg0, arg1)
{
    static _array = __scribble_initialize().__anim_properties;
    static _scribble_state = __scribble_initialize().__state;
    
    if (arg0 != _array[(3 << 0)] || arg1 != _array[(4 << 0)])
    {
        _array[(3 << 0)] = arg0;
        _array[(4 << 0)] = arg1;
        
        with (_scribble_state)
        {
            __shader_anim_desync = !__shader_anim_disabled;
            __shader_anim_desync_to_default = false;
        }
    }
}
