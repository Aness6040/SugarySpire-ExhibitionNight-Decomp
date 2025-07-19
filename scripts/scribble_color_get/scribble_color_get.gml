function scribble_color_get(arg0)
{
    static _colourDict = __scribble_config_colours();
    
    return variable_struct_get(_colourDict, arg0);
}
