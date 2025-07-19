function scribble_font_set_default(arg0)
{
    static _scribble_state = __scribble_initialize().__state;
    
    if (!is_string(arg0))
    {
        __scribble_error("The default font should be defined using its name as a string.\n(Input was an invalid datatype)");
        return undefined;
    }
    
    if (false && _scribble_state.__default_font == undefined)
        __scribble_trace("Setting default font to \"" + string(arg0) + "\"");
    
    _scribble_state.__default_font = arg0;
}
