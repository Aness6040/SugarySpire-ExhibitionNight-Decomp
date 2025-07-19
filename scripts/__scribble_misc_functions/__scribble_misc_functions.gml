function __scribble_trace()
{
    var _string = "ScribbleDX: ";
    var _i = 0;
    
    repeat (argument_count)
    {
        if (is_real(argument[_i]))
            _string += string_format(argument[_i], 0, 4);
        else
            _string += string(argument[_i]);
        
        _i++;
    }
    
    show_debug_message(_string);
}

function __scribble_loud()
{
    var _string = "Scribble Deluxe:\n";
    var _i = 0;
    
    repeat (argument_count)
    {
        if (is_real(argument[_i]))
            _string += string_format(argument[_i], 0, 4);
        else
            _string += string(argument[_i]);
        
        _i++;
    }
    
    show_debug_message(_string);
    show_message(_string);
}

function __scribble_error()
{
    var _string = "";
    var _i = 0;
    
    repeat (argument_count)
    {
        _string += string(argument[_i]);
        _i++;
    }
    
    show_debug_message("Scribble Deluxe 9.3.5: " + string_replace_all(_string, "\n", "\n          "));
    show_error(" \nScribble Deluxe 9.3.5:\n" + _string + "\n ", true);
}

function __scribble_get_font_data(arg0)
{
    static _font_data_map = __scribble_initialize().__font_data_map;
    
    var _data = ds_map_find_value(_font_data_map, arg0);
    
    if (_data == undefined)
    {
        var _string = "Font \"" + string(arg0) + "\" not recognised";
        
        if (__scribble_initialize().__gmMightRemoveUnusedAssets)
            _string += "\nThis may indicate that unused assets have been stripped from the project\nPlease untick \"Automatically remove unused assets when compiling\" in Game Options";
        
        __scribble_error(_string);
    }
    
    return _data;
}

function __scribble_process_colour(arg0)
{
    static _colors_struct = __scribble_config_colours();
    
    if (is_string(arg0))
    {
        if (!variable_struct_exists(_colors_struct, arg0))
            __scribble_error("Colour \"", arg0, "\" not recognised. Please add it to __scribble_config_colours()");
        
        return variable_struct_get(_colors_struct, arg0) & 16777215;
    }
    else
    {
        return arg0;
    }
}

function __scribble_random()
{
    static _lcg = date_current_datetime() * 100;
    
    _lcg = (48271 * _lcg) % 2147483647;
    return _lcg / 2147483648;
}

function __scribble_array_find_index(arg0, arg1)
{
    var _i = 0;
    
    repeat (array_length(arg0))
    {
        if (arg0[_i] == arg1)
            return _i;
        
        _i++;
    }
    
    return -1;
}

function __scribble_asset_is_krutidev(arg0, arg1)
{
    var _tags_array = asset_get_tags(arg0, arg1);
    var _i = 0;
    
    repeat (array_length(_tags_array))
    {
        var _tag = _tags_array[_i];
        
        if (_tag == "scribble krutidev" || _tag == "Scribble krutidev" || _tag == "Scribble Krutidev")
            return true;
        
        _i++;
    }
    
    return false;
}

function __scribble_buffer_read_unicode(arg0)
{
    var _value = buffer_read(arg0, buffer_u8);
    
    if ((_value & 224) == 192)
    {
        _value = (_value & 31) << 6;
        _value += (buffer_read(arg0, buffer_u8) & 63);
    }
    else if ((_value & 240) == 224)
    {
        _value = (_value & 15) << 12;
        _value += ((buffer_read(arg0, buffer_u8) & 63) << 6);
        _value += (buffer_read(arg0, buffer_u8) & 63);
    }
    else if ((_value & 248) == 240)
    {
        _value = (_value & 7) << 18;
        _value += ((buffer_read(arg0, buffer_u8) & 63) << 12);
        _value += ((buffer_read(arg0, buffer_u8) & 63) << 6);
        _value += (buffer_read(arg0, buffer_u8) & 63);
    }
    
    return _value;
}

function __scribble_buffer_peek_unicode(arg0, arg1)
{
    var _value = buffer_peek(arg0, arg1, buffer_u8);
    
    if ((_value & 224) == 192)
    {
        _value = (_value & 31) << 6;
        _value += (buffer_peek(arg0, arg1 + 1, buffer_u8) & 63);
    }
    else if ((_value & 240) == 224)
    {
        _value = (_value & 15) << 12;
        _value += ((buffer_peek(arg0, arg1 + 1, buffer_u8) & 63) << 6);
        _value += (buffer_peek(arg0, arg1 + 2, buffer_u8) & 63);
    }
    else if ((_value & 248) == 240)
    {
        _value = (_value & 7) << 18;
        _value += ((buffer_peek(arg0, arg1 + 1, buffer_u8) & 63) << 12);
        _value += ((buffer_peek(arg0, arg1 + 2, buffer_u8) & 63) << 6);
        _value += (buffer_peek(arg0, arg1 + 3, buffer_u8) & 63);
    }
    
    return _value;
}

function __scribble_buffer_write_unicode(arg0, arg1)
{
    if (arg1 <= 127)
    {
        buffer_write(arg0, buffer_u8, arg1);
    }
    else if (arg1 <= 2047)
    {
        buffer_write(arg0, buffer_u8, 192 | (arg1 & 31));
        buffer_write(arg0, buffer_u8, 128 | ((arg1 >> 5) & 63));
    }
    else if (arg1 <= 65535)
    {
        buffer_write(arg0, buffer_u8, 192 | (arg1 & 15));
        buffer_write(arg0, buffer_u8, 128 | ((arg1 >> 4) & 63));
        buffer_write(arg0, buffer_u8, 128 | ((arg1 >> 10) & 63));
    }
    else if (arg1 <= 65536)
    {
        buffer_write(arg0, buffer_u8, 192 | (arg1 & 7));
        buffer_write(arg0, buffer_u8, 128 | ((arg1 >> 3) & 63));
        buffer_write(arg0, buffer_u8, 128 | ((arg1 >> 9) & 63));
        buffer_write(arg0, buffer_u8, 128 | ((arg1 >> 15) & 63));
    }
}

function __scribble_image_speed_get(arg0)
{
    return (sprite_get_speed_type(arg0) == 1) ? sprite_get_speed(arg0) : (sprite_get_speed(arg0) / game_get_speed(gamespeed_fps));
}

function __scribble_matrix_inverse(arg0)
{
    var _inv = array_create(16, undefined);
    _inv[0] = (((arg0[5] * arg0[10] * arg0[15]) - (arg0[5] * arg0[11] * arg0[14]) - (arg0[9] * arg0[6] * arg0[15])) + (arg0[9] * arg0[7] * arg0[14]) + (arg0[13] * arg0[6] * arg0[11])) - (arg0[13] * arg0[7] * arg0[10]);
    _inv[4] = (((-arg0[4] * arg0[10] * arg0[15]) + (arg0[4] * arg0[11] * arg0[14]) + (arg0[8] * arg0[6] * arg0[15])) - (arg0[8] * arg0[7] * arg0[14]) - (arg0[12] * arg0[6] * arg0[11])) + (arg0[12] * arg0[7] * arg0[10]);
    _inv[8] = (((arg0[4] * arg0[9] * arg0[15]) - (arg0[4] * arg0[11] * arg0[13]) - (arg0[8] * arg0[5] * arg0[15])) + (arg0[8] * arg0[7] * arg0[13]) + (arg0[12] * arg0[5] * arg0[11])) - (arg0[12] * arg0[7] * arg0[9]);
    _inv[12] = (((-arg0[4] * arg0[9] * arg0[14]) + (arg0[4] * arg0[10] * arg0[13]) + (arg0[8] * arg0[5] * arg0[14])) - (arg0[8] * arg0[6] * arg0[13]) - (arg0[12] * arg0[5] * arg0[10])) + (arg0[12] * arg0[6] * arg0[9]);
    _inv[1] = (((-arg0[1] * arg0[10] * arg0[15]) + (arg0[1] * arg0[11] * arg0[14]) + (arg0[9] * arg0[2] * arg0[15])) - (arg0[9] * arg0[3] * arg0[14]) - (arg0[13] * arg0[2] * arg0[11])) + (arg0[13] * arg0[3] * arg0[10]);
    _inv[5] = (((arg0[0] * arg0[10] * arg0[15]) - (arg0[0] * arg0[11] * arg0[14]) - (arg0[8] * arg0[2] * arg0[15])) + (arg0[8] * arg0[3] * arg0[14]) + (arg0[12] * arg0[2] * arg0[11])) - (arg0[12] * arg0[3] * arg0[10]);
    _inv[9] = (((-arg0[0] * arg0[9] * arg0[15]) + (arg0[0] * arg0[11] * arg0[13]) + (arg0[8] * arg0[1] * arg0[15])) - (arg0[8] * arg0[3] * arg0[13]) - (arg0[12] * arg0[1] * arg0[11])) + (arg0[12] * arg0[3] * arg0[9]);
    _inv[13] = (((arg0[0] * arg0[9] * arg0[14]) - (arg0[0] * arg0[10] * arg0[13]) - (arg0[8] * arg0[1] * arg0[14])) + (arg0[8] * arg0[2] * arg0[13]) + (arg0[12] * arg0[1] * arg0[10])) - (arg0[12] * arg0[2] * arg0[9]);
    _inv[2] = (((arg0[1] * arg0[6] * arg0[15]) - (arg0[1] * arg0[7] * arg0[14]) - (arg0[5] * arg0[2] * arg0[15])) + (arg0[5] * arg0[3] * arg0[14]) + (arg0[13] * arg0[2] * arg0[7])) - (arg0[13] * arg0[3] * arg0[6]);
    _inv[6] = (((-arg0[0] * arg0[6] * arg0[15]) + (arg0[0] * arg0[7] * arg0[14]) + (arg0[4] * arg0[2] * arg0[15])) - (arg0[4] * arg0[3] * arg0[14]) - (arg0[12] * arg0[2] * arg0[7])) + (arg0[12] * arg0[3] * arg0[6]);
    _inv[10] = (((arg0[0] * arg0[5] * arg0[15]) - (arg0[0] * arg0[7] * arg0[13]) - (arg0[4] * arg0[1] * arg0[15])) + (arg0[4] * arg0[3] * arg0[13]) + (arg0[12] * arg0[1] * arg0[7])) - (arg0[12] * arg0[3] * arg0[5]);
    _inv[14] = (((-arg0[0] * arg0[5] * arg0[14]) + (arg0[0] * arg0[6] * arg0[13]) + (arg0[4] * arg0[1] * arg0[14])) - (arg0[4] * arg0[2] * arg0[13]) - (arg0[12] * arg0[1] * arg0[6])) + (arg0[12] * arg0[2] * arg0[5]);
    _inv[3] = (((-arg0[1] * arg0[6] * arg0[11]) + (arg0[1] * arg0[7] * arg0[10]) + (arg0[5] * arg0[2] * arg0[11])) - (arg0[5] * arg0[3] * arg0[10]) - (arg0[9] * arg0[2] * arg0[7])) + (arg0[9] * arg0[3] * arg0[6]);
    _inv[7] = (((arg0[0] * arg0[6] * arg0[11]) - (arg0[0] * arg0[7] * arg0[10]) - (arg0[4] * arg0[2] * arg0[11])) + (arg0[4] * arg0[3] * arg0[10]) + (arg0[8] * arg0[2] * arg0[7])) - (arg0[8] * arg0[3] * arg0[6]);
    _inv[11] = (((-arg0[0] * arg0[5] * arg0[11]) + (arg0[0] * arg0[7] * arg0[9]) + (arg0[4] * arg0[1] * arg0[11])) - (arg0[4] * arg0[3] * arg0[9]) - (arg0[8] * arg0[1] * arg0[7])) + (arg0[8] * arg0[3] * arg0[5]);
    _inv[15] = (((arg0[0] * arg0[5] * arg0[10]) - (arg0[0] * arg0[6] * arg0[9]) - (arg0[4] * arg0[1] * arg0[10])) + (arg0[4] * arg0[2] * arg0[9]) + (arg0[8] * arg0[1] * arg0[6])) - (arg0[8] * arg0[2] * arg0[5]);
    var _det = (arg0[0] * _inv[0]) + (arg0[1] * _inv[4]) + (arg0[2] * _inv[8]) + (arg0[3] * _inv[12]);
    
    if (_det == 0)
    {
        __scribble_trace("Warning! Determinant of the matrix is zero");
        return arg0;
    }
    
    _det = 1 / _det;
    _inv[0] *= _det;
    _inv[1] *= _det;
    _inv[2] *= _det;
    _inv[3] *= _det;
    _inv[4] *= _det;
    _inv[5] *= _det;
    _inv[6] *= _det;
    _inv[7] *= _det;
    _inv[8] *= _det;
    _inv[9] *= _det;
    _inv[10] *= _det;
    _inv[11] *= _det;
    _inv[12] *= _det;
    _inv[13] *= _det;
    _inv[14] *= _det;
    _inv[15] *= _det;
    return _inv;
}
