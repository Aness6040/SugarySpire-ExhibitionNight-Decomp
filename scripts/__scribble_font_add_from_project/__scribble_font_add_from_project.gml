function __scribble_font_add_from_project(arg0)
{
    static _font_data_map = __scribble_initialize().__font_data_map;
    
    var _name = font_get_name(arg0);
    
    if (ds_map_exists(_font_data_map, _name))
    {
        __scribble_trace("Warning! A font for \"", _name, "\" has already been added. Destroying the old font and creating a new one");
        ds_map_find_value(_font_data_map, _name).__destroy();
    }
    
    var _scribble_state = __scribble_initialize().__state;
    
    if (_scribble_state.__default_font == undefined)
        _scribble_state.__default_font = _name;
    
    try
    {
        var _is_krutidev = __scribble_asset_is_krutidev(arg0, 7);
        var _global_glyph_bidi_map = __scribble_initialize().__glyph_data.__bidi_map;
        var _font_info = font_get_info(arg0);
        var _info_glyphs_dict = _font_info.glyphs;
        var _ascender_offset = _font_info.ascenderOffset;
        var _info_glyph_names = variable_struct_get_names(_info_glyphs_dict);
        var _size = array_length(_info_glyph_names);
        var _info_glyphs_array = array_create(array_length(_info_glyph_names));
        var _i = 0;
        
        repeat (_size)
        {
            var _glyph = _info_glyph_names[_i];
            var _struct = variable_struct_get(_info_glyphs_dict, _glyph);
            _info_glyphs_array[_i] = _struct;
            _i++;
        }
        
        var _asset = asset_get_index(_name);
        var _texture = font_get_texture(_asset);
        var _texture_uvs = font_get_uvs(_asset);
        var _texture_tw = texture_get_texel_width(_texture);
        var _texture_th = texture_get_texel_height(_texture);
        var _texture_w = (_texture_uvs[2] - _texture_uvs[0]) / _texture_tw;
        var _texture_h = (_texture_uvs[3] - _texture_uvs[1]) / _texture_th;
        var _texture_l = round(_texture_uvs[0] / _texture_tw);
        var _texture_t = round(_texture_uvs[1] / _texture_th);
        var _sdf = _font_info.sdfEnabled;
        var _sdf_pxrange, _sdf_thickness_offset, _sdf_offset, _sdf_height_offset;
        
        if (_sdf)
        {
            _sdf_pxrange = 2 * _font_info.sdfSpread;
            _sdf_thickness_offset = 0;
            _sdf_offset = -_sdf_pxrange;
            _sdf_height_offset = -_sdf_pxrange + 2;
        }
        else
        {
            _sdf_pxrange = undefined;
            _sdf_thickness_offset = undefined;
            _sdf_offset = 0;
            _sdf_height_offset = 0;
        }
        
        var _font_data = new __scribble_class_font(_name, _size, _sdf ? (2 << 0) : (0 << 0));
        _font_data.__sdf_pxrange = _sdf_pxrange;
        _font_data.__sdf_thickness_offset = _sdf_thickness_offset;
        var _font_glyphs_map = _font_data.__glyphs_map;
        var _font_glyph_data_grid = _font_data.__glyph_data_grid;
        var _font_kerning_map = _font_data.__kerning_map;
        
        if (_is_krutidev)
            _font_data.__is_krutidev = true;
        
        _i = 0;
        
        repeat (_size)
        {
            var _glyph_dict = _info_glyphs_array[_i];
            var _unicode = _glyph_dict.char;
            var _bidi;
            
            if (_unicode >= 12288 && _unicode <= 12351)
            {
                _bidi = (1 << 0);
            }
            else if (_unicode >= 12352 && _unicode <= 12543)
            {
                _bidi = (3 << 0);
            }
            else if (_unicode >= 19968 && _unicode <= 40959)
            {
                _bidi = (3 << 0);
            }
            else if (_unicode >= 65280 && _unicode <= 65295)
            {
                _bidi = (1 << 0);
            }
            else if (_unicode >= 65306 && _unicode <= 65311)
            {
                _bidi = (1 << 0);
            }
            else if (_unicode >= 65371 && _unicode <= 65380)
            {
                _bidi = (1 << 0);
            }
            else
            {
                _bidi = ds_map_find_value(_global_glyph_bidi_map, _unicode);
                
                if (_bidi == undefined)
                    _bidi = (4 << 0);
            }
            
            if (_is_krutidev)
            {
                if (_bidi != (0 << 0))
                {
                    _bidi = (5 << 0);
                    _unicode += 65535;
                }
            }
            
            var _kerning_array = variable_struct_get(_glyph_dict, "kerning");
            
            if (is_array(_kerning_array))
            {
                var _j = 0;
                
                repeat (array_length(_kerning_array) div 2)
                {
                    var _first = _kerning_array[_j];
                    
                    if (_first > 0)
                        ds_map_set(_font_kerning_map, ((_unicode & 65535) << 16) | (_first & 65535), _kerning_array[_j + 1]);
                    
                    _j += 2;
                }
            }
            
            var _char = chr(_unicode);
            var _x = variable_struct_get(_glyph_dict, "x");
            var _y = variable_struct_get(_glyph_dict, "y");
            var _w = _glyph_dict.w;
            var _h = _glyph_dict.h;
            var _xoffset = _glyph_dict.offset + (0.5 * _sdf_offset);
            var _yoffset = 0.5 * _sdf_offset;
            
            if (_sdf && false)
            {
                _x += 0;
                _y += 0;
                _w -= 0;
                _h -= 0;
                _xoffset += 0;
                _yoffset += 0;
            }
            
            var _u0 = _x * _texture_tw;
            var _v0 = _y * _texture_th;
            var _u1 = _u0 + (_w * _texture_tw);
            var _v1 = _v0 + (_h * _texture_th);
            ds_grid_set(_font_glyph_data_grid, _i, (0 << 0), _char);
            ds_grid_set(_font_glyph_data_grid, _i, (1 << 0), _unicode);
            ds_grid_set(_font_glyph_data_grid, _i, (2 << 0), _bidi);
            ds_grid_set(_font_glyph_data_grid, _i, (3 << 0), _xoffset);
            ds_grid_set(_font_glyph_data_grid, _i, (4 << 0), _yoffset - _ascender_offset);
            ds_grid_set(_font_glyph_data_grid, _i, (5 << 0), _w);
            ds_grid_set(_font_glyph_data_grid, _i, (6 << 0), _h);
            ds_grid_set(_font_glyph_data_grid, _i, (7 << 0), _h + _sdf_height_offset);
            ds_grid_set(_font_glyph_data_grid, _i, (8 << 0), _glyph_dict.shift);
            ds_grid_set(_font_glyph_data_grid, _i, (9 << 0), -_glyph_dict.offset);
            ds_grid_set(_font_glyph_data_grid, _i, (10 << 0), 1);
            ds_grid_set(_font_glyph_data_grid, _i, (11 << 0), _texture);
            ds_grid_set(_font_glyph_data_grid, _i, (12 << 0), _u0);
            ds_grid_set(_font_glyph_data_grid, _i, (13 << 0), _u1);
            ds_grid_set(_font_glyph_data_grid, _i, (14 << 0), _v0);
            ds_grid_set(_font_glyph_data_grid, _i, (15 << 0), _v1);
            ds_grid_set(_font_glyph_data_grid, _i, (16 << 0), _name);
            ds_map_set(_font_glyphs_map, _unicode, _i);
            _i++;
        }
        
        _font_data.__calculate_font_height();
        var _GM_scaling = _font_info.size / ds_grid_get(_font_glyph_data_grid, ds_map_find_value(_font_glyphs_map, 32), (6 << 0));
        
        if (_GM_scaling > 1)
        {
            __scribble_trace("Warning! Font \"", _name, "\" may have been scaled during compilation (font size = ", _font_info.size, ", space height = ", ds_grid_get(_font_glyph_data_grid, ds_map_find_value(_font_glyphs_map, 32), (6 << 0)), ", scaling factor = ", _GM_scaling, "). Check that the font is rendering correctly. If it is not, try setting SCRIBBLE_ATTEMPT_FONT_SCALING_FIX to <false>");
            scribble_font_scale(_name, ceil(_GM_scaling));
        }
    }
    catch (_error)
    {
        __scribble_trace(_error);
        __scribble_error("There was an error whilst reading \"", _name, "\"\nPlease reimport the font into GameMaker and reset character ranges\nIf this issue persists, please report it");
    }
}
