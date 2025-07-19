function scribble_super_glyph_copy_all(arg0, arg1, arg2)
{
    var _target_font_data = __scribble_get_font_data(arg0);
    var _source_font_data = __scribble_get_font_data(arg1);
    __scribble_super_glyph_copy_common(_target_font_data, _source_font_data);
    var _source_glyphs_map = _source_font_data.__glyphs_map;
    var _source_glyphs_data_grid = _source_font_data.__glyph_data_grid;
    var _target_glyphs_map = _target_font_data.__glyphs_map;
    var _target_glyph_data_grid = _target_font_data.__glyph_data_grid;
    var _keys_array = ds_map_keys_to_array(_source_glyphs_map);
    var _i = 0;
    
    repeat (array_length(_keys_array))
    {
        __scribble_glyph_duplicate(_source_glyphs_map, _source_glyphs_data_grid, _target_glyphs_map, _target_glyph_data_grid, _keys_array[_i], arg2);
        _i++;
    }
    
    _target_font_data.__height = max(_target_font_data.__height, _source_font_data.__height);
    ds_grid_set_region(_target_glyph_data_grid, 0, (7 << 0), ds_grid_width(_target_glyph_data_grid), (7 << 0), _target_font_data.__height);
}
