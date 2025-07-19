function __scribble_parse_sound_array_string(arg0)
{
    var _sound_array_string = string_trim_start(arg0);
    
    if (string_char_at(_sound_array_string, 1) == "[")
    {
        var _sound_array;
        
        try
        {
            _sound_array = json_parse(_sound_array_string);
        }
        catch (_error)
        {
            __scribble_trace(arg0);
            __scribble_error("Could not parse sound array string (please check the debug log)");
        }
        
        var _i = 0;
        
        repeat (array_length(_sound_array))
        {
            _sound_array[_i] = asset_get_index(_sound_array[_i]);
            _i++;
        }
        
        return _sound_array;
    }
    else
    {
        return asset_get_index(arg0);
    }
}
