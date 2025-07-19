function scribble_typists_add_event(arg0, arg1)
{
    static _system = __scribble_initialize();
    static _effects_map = _system.__effects_map;
    static _macros_map = _system.__macros_map;
    static _typewriter_events_map = _system.__typewriter_events_map;
    
    if (!is_string(arg0))
    {
        __scribble_error("Event names should be strings.\n(Input to script was \"", arg0, "\")");
        exit;
    }
    
    if (is_undefined(arg1) || (!is_method(arg1) && !script_exists(arg1)))
    {
        __scribble_error("Invalid function provided\n(Input datatype was \"", typeof(arg1), "\")");
        exit;
    }
    
    if (variable_struct_exists(__scribble_config_colours(), arg0))
    {
        __scribble_trace("Warning! Event name \"" + arg0 + "\" has already been defined as a colour");
        exit;
    }
    
    if (ds_map_exists(_effects_map, arg0))
    {
        __scribble_trace("Warning! Event name \"" + arg0 + "\" has already been defined as an effect");
        exit;
    }
    
    if (ds_map_exists(_macros_map, arg0))
    {
        __scribble_trace("Warning! Macro name \"" + arg0 + "\" has already been defined as a macro");
        exit;
    }
    
    var _old_function = ds_map_find_value(_typewriter_events_map, arg0);
    
    if (!is_undefined(_old_function))
    {
        if (is_numeric(_old_function) && _old_function < 0)
            __scribble_trace("Warning! Overwriting event [" + arg0 + "] tied to <invalid script>");
        else
            __scribble_trace("Warning! Overwriting event [" + arg0 + "] tied to \"" + (is_method(_old_function) ? string(_old_function) : script_get_name(_old_function)) + "\"");
    }
    
    ds_map_set(_typewriter_events_map, arg0, arg1);
}
