function scribble_anim_disabled(arg0)
{
    static _scribble_state = __scribble_initialize().__state;
    
    with (_scribble_state)
    {
        if (__shader_anim_disabled != arg0)
        {
            __shader_anim_disabled = arg0;
            __shader_anim_desync = true;
        }
    }
}
