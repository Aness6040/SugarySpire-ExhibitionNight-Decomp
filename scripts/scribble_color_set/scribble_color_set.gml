function scribble_color_set(arg0, arg1)
{
    static _colourDict = __scribble_config_colours();
    
    if (arg1 == undefined)
    {
        if (variable_struct_exists(_colourDict, arg0))
        {
            variable_struct_remove(_colourDict, arg0);
            scribble_refresh_everything();
        }
    }
    else if (!is_numeric(arg1))
    {
        __scribble_error("Colour values should be 24-bit BGR values");
    }
    else if (variable_struct_get(_colourDict, arg0) != arg1)
    {
        variable_struct_set(_colourDict, arg0, arg1);
        scribble_refresh_everything();
    }
}
