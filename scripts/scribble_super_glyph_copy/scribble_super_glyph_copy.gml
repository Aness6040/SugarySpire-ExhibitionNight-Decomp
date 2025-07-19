function scribble_super_glyph_copy(arg0, arg1, arg2)
{
    var _target_font_data = __scribble_get_font_data(arg0);
    var _source_font_data = __scribble_get_font_data(arg1);
    __scribble_super_glyph_copy_common(_target_font_data, _source_font_data);
    var _target_glyphs_map = _target_font_data.__glyphs_map;
    var _target_glyph_data_grid = _target_font_data.__glyph_data_grid;
    var _source_glyphs_map = _source_font_data.__glyphs_map;
    var _source_glyphs_data_grid = _source_font_data.__glyph_data_grid;
    var _glyphs_array = array_create(argument_count - 3);
    var _i = 0;
    
    repeat (argument_count - 3)
    {
        _glyphs_array[_i] = argument[_i + 3];
        _i++;
    }
    
    var _work_array = __scribble_prepare_super_work_array(_glyphs_array);
    _i = 0;
    
    repeat (array_length(_work_array))
    {
        var _glyph_range_array = _work_array[_i];
        var _unicode = _glyph_range_array[0];
        
        repeat ((1 + _glyph_range_array[1]) - _unicode)
        {
            __scribble_glyph_duplicate(_source_glyphs_map, _source_glyphs_data_grid, _target_glyphs_map, _target_glyph_data_grid, _unicode, arg2);
            _unicode++;
        }
        
        _i++;
    }
    
    ds_grid_set_region(_target_glyph_data_grid, 0, (7 << 0), ds_grid_width(_target_glyph_data_grid), (7 << 0), max(_target_font_data.__height, _source_font_data.__height));
}

function __scribble_super_glyph_copy_common(arg0, arg1)
{
    if (arg1.__sdf == undefined)
    {
        __scribble_error("Cannot determine if the source font is an SDF font. Please add glyphs to it");
    }
    else if (arg0.__sdf == undefined)
    {
    }
    else if (arg0.__sdf || arg1.__sdf)
    {
        if (arg0.__sdf == false)
            __scribble_error("Cannot mix standard/sprite fonts with SDF fonts (target is not an SDF font)");
        
        if (arg1.__sdf == false)
            __scribble_error("Cannot mix standard/sprite fonts with SDF fonts (source is not an SDF font)");
        
        if (arg1.__sdf_pxrange == undefined)
            __scribble_error("Source font's SDF pxrange must be defined before copying glyphs");
        
        if (arg0.__sdf_pxrange != undefined && arg0.__sdf_pxrange != arg1.__sdf_pxrange)
            __scribble_error("SDF font pxrange must match (target = ", arg0.__sdf_pxrange, " vs. source = ", arg1.__sdf_pxrange, ")");
    }
    
    arg0.__sdf = arg1.__sdf;
    arg0.__sdf_pxrange = arg1.__sdf_pxrange;
}

function __scribble_prepare_super_work_array(arg0)
{
    var _output_array = [];
    var _i = 0;
    
    repeat (array_length(arg0))
    {
        var _glyph_to_copy = arg0[_i];
        
        if (is_string(_glyph_to_copy))
        {
            var _j = 1;
            
            repeat (string_length(_glyph_to_copy))
            {
                var _unicode = ord(string_char_at(_glyph_to_copy, _j));
                array_push(_output_array, [_unicode, _unicode]);
                _j++;
            }
            
            _glyph_to_copy = undefined;
        }
        
        if (is_numeric(_glyph_to_copy))
            _glyph_to_copy = [_glyph_to_copy, _glyph_to_copy];
        
        if (is_array(_glyph_to_copy))
            array_push(_output_array, _glyph_to_copy);
        
        _i++;
    }
    
    return _output_array;
}

function __scribble_glyph_duplicate(arg0, arg1, arg2, arg3, arg4, arg5)
{
    var _source_x = ds_map_find_value(arg0, arg4);
    
    if (_source_x == undefined)
    {
        __scribble_trace("Warning! Glyph ", arg4, " (", chr(arg4), ") not found in source font");
        exit;
    }
    
    var _target_x = ds_map_find_value(arg2, arg4);
    
    if (_target_x == undefined)
    {
        _target_x = ds_grid_width(arg3);
        ds_map_set(arg2, arg4, _target_x);
        ds_grid_resize(arg3, _target_x + 1, (17 << 0));
    }
    else if (!arg5)
    {
        exit;
    }
    
    ds_grid_set_grid_region(arg3, arg1, _source_x, 0, _source_x, (17 << 0), _target_x, 0);
}
