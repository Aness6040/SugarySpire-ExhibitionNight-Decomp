function scribble_anim_blink(arg0, arg1, arg2)
{
    static _scribble_state = __scribble_initialize().__state;
    
    with (_scribble_state)
    {
        __blink_on_duration = arg0;
        __blink_off_duration = arg1;
        __blink_time_offset = arg2;
    }
}
