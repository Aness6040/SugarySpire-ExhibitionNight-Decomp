function scribble_glyph_set(arg0, arg1, arg2, arg3, arg4 = false)
{
    var _font_data = __scribble_get_font_data(arg0);
    var _grid = _font_data.__glyph_data_grid;
    var _map = _font_data.__glyphs_map;
    
    if (arg1 == -3 || arg1 == "all")
    {
        if (arg4)
            ds_grid_add_region(_grid, 0, arg2, ds_grid_width(_grid) - 1, arg2, arg3);
        else
            ds_grid_set_region(_grid, 0, arg2, ds_grid_width(_grid) - 1, arg2, arg3);
        
        var _glyph_index = ds_map_find_value(_map, 32);
        
        if (_glyph_index == undefined)
        {
            __scribble_error("Space character not found for font \"", arg0, "\"");
            exit;
        }
        
        if (arg2 == (8 << 0))
            ds_grid_set(_grid, _glyph_index, (5 << 0), ds_grid_get(_grid, _glyph_index, (8 << 0)));
        
        if (arg2 == (5 << 0))
            ds_grid_set(_grid, _glyph_index, (8 << 0), ds_grid_get(_grid, _glyph_index, (5 << 0)));
        
        if (arg2 == (6 << 0))
            ds_grid_set(_grid, _glyph_index, (7 << 0), ds_grid_get(_grid, _glyph_index, (6 << 0)));
        
        if (arg2 == (7 << 0))
            ds_grid_set(_grid, _glyph_index, (6 << 0), ds_grid_get(_grid, _glyph_index, (7 << 0)));
        
        if (arg2 == (6 << 0) || arg2 == (7 << 0))
        {
            ds_grid_set_region(_grid, 0, (7 << 0), ds_grid_width(_grid) - 1, (7 << 0), ds_grid_get(_grid, _glyph_index, (7 << 0)));
            _font_data.__calculate_font_height();
        }
    }
    else
    {
        var _unicode = is_real(arg1) ? arg1 : ord(arg1);
        var _glyph_index = ds_map_find_value(_map, _unicode);
        
        if (_glyph_index == undefined)
        {
            __scribble_error("Character \"", arg1, "\" not found for font \"", arg0, "\"");
            exit;
        }
        
        var _new_value = arg4 ? (ds_grid_get(_grid, _glyph_index, arg2) + arg3) : arg3;
        ds_grid_set(_grid, _glyph_index, arg2, _new_value);
        
        if (_unicode == 32)
        {
            if (arg2 == (8 << 0))
                ds_grid_set(_grid, _glyph_index, (5 << 0), _new_value);
            
            if (arg2 == (5 << 0))
                ds_grid_set(_grid, _glyph_index, (8 << 0), _new_value);
            
            if (arg2 == (6 << 0))
                ds_grid_set(_grid, _glyph_index, (7 << 0), _new_value);
            
            if (arg2 == (7 << 0))
                ds_grid_set(_grid, _glyph_index, (6 << 0), _new_value);
            
            if (arg2 == (6 << 0) || arg2 == (7 << 0))
            {
                ds_grid_set_region(_grid, 0, (7 << 0), ds_grid_width(_grid) - 1, (7 << 0), _new_value);
                _font_data.__calculate_font_height();
            }
        }
        
        return _new_value;
    }
}
