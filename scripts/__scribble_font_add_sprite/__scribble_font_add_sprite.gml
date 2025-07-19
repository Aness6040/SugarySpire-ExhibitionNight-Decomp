function __scribble_font_add_sprite(arg0, arg1, arg2, arg3)
{
    var _spritefont = font_add_sprite(arg0, arg1, arg2, arg3);
    __scribble_font_add_sprite_common(arg0, _spritefont, arg2, arg3);
    return _spritefont;
}

function __scribble_font_add_sprite_ext(arg0, arg1, arg2, arg3)
{
    var _spritefont = font_add_sprite_ext(arg0, arg1, arg2, arg3);
    __scribble_font_add_sprite_common(arg0, _spritefont, arg2, arg3);
    return _spritefont;
}

function __scribble_font_add_sprite_common(arg0, arg1, arg2, arg3)
{
    static _font_data_map = __scribble_initialize().__font_data_map;
    static _tex_index_lookup_map = ds_map_create();
    
    var _font_info = font_get_info(arg1);
    var _sprite_name = sprite_get_name(arg0);
    
    if (ds_map_exists(_font_data_map, _sprite_name))
    {
        __scribble_trace("Warning! A spritefont for \"", _sprite_name, "\" has already been added. Destroying the old spritefont and creating a new one");
        ds_map_find_value(_font_data_map, _sprite_name).__destroy();
    }
    
    var _is_krutidev = __scribble_asset_is_krutidev(arg0, 1);
    var _global_glyph_bidi_map = __scribble_initialize().__glyph_data.__bidi_map;
    var _scribble_state = __scribble_initialize().__state;
    
    if (_scribble_state.__default_font == undefined)
        _scribble_state.__default_font = _sprite_name;
    
    var _sprite_width = sprite_get_width(arg0);
    var _sprite_height = sprite_get_height(arg0);
    var _sprite_info = sprite_get_info(arg0);
    var _sprite_frames = _sprite_info.frames;
    var _sprite_x_offset = 0;
    var _sprite_y_offset = 0;
    var _info_glyphs_dict = _font_info.glyphs;
    var _info_glyph_names = variable_struct_get_names(_info_glyphs_dict);
    var _size = array_length(_info_glyph_names);
    var _font_data = new __scribble_class_font(_sprite_name, _size, (0 << 0));
    var _font_glyphs_map = _font_data.__glyphs_map;
    var _font_glyph_data_grid = _font_data.__glyph_data_grid;
    
    if (_is_krutidev)
        _font_data.__is_krutidev = true;
    
    ds_map_set(_font_data_map, font_get_name(arg1), _font_data);
    var _i = 0;
    
    repeat (_size)
    {
        var _glyph = _info_glyph_names[_i];
        var _unicode = ord(_glyph);
        var _image = variable_struct_get(_info_glyphs_dict, _glyph).char;
        var _uvs = sprite_get_uvs(arg0, _image);
        
        if (_unicode == 32)
        {
            var _space_width;
            
            if (arg2)
            {
                if (_image >= array_length(_sprite_frames))
                    _space_width = ((1 + sprite_get_bbox_right(arg0)) - sprite_get_bbox_left(arg0)) + arg3;
                else
                    _space_width = _sprite_frames[_image].crop_width + arg3;
            }
            else
            {
                _space_width = _sprite_width + arg3;
            }
            
            ds_grid_set(_font_glyph_data_grid, _i, (0 << 0), _glyph);
            ds_grid_set(_font_glyph_data_grid, _i, (1 << 0), _unicode);
            ds_grid_set(_font_glyph_data_grid, _i, (2 << 0), (0 << 0));
            ds_grid_set(_font_glyph_data_grid, _i, (3 << 0), -_sprite_x_offset);
            ds_grid_set(_font_glyph_data_grid, _i, (4 << 0), -_sprite_y_offset);
            ds_grid_set(_font_glyph_data_grid, _i, (5 << 0), _space_width);
            ds_grid_set(_font_glyph_data_grid, _i, (6 << 0), _sprite_height);
            ds_grid_set(_font_glyph_data_grid, _i, (7 << 0), _sprite_height);
            ds_grid_set(_font_glyph_data_grid, _i, (8 << 0), _space_width);
            ds_grid_set(_font_glyph_data_grid, _i, (9 << 0), 0);
            ds_grid_set(_font_glyph_data_grid, _i, (10 << 0), 1);
            ds_grid_set(_font_glyph_data_grid, _i, (11 << 0), _sprite_frames[0].texture);
            ds_grid_set(_font_glyph_data_grid, _i, (12 << 0), 0);
            ds_grid_set(_font_glyph_data_grid, _i, (14 << 0), 0);
            ds_grid_set(_font_glyph_data_grid, _i, (13 << 0), 0);
            ds_grid_set(_font_glyph_data_grid, _i, (15 << 0), 0);
            ds_grid_set(_font_glyph_data_grid, _i, (16 << 0), _sprite_name);
            ds_map_set(_font_glyphs_map, _unicode, _i);
        }
        else
        {
            var _image_info = _sprite_frames[_image];
            var _texture_index = _image_info.texture;
            var _texture = ds_map_find_value(_tex_index_lookup_map, _texture_index);
            
            if (_texture == undefined)
            {
                _texture = sprite_get_texture(arg0, _image);
                ds_map_set(_tex_index_lookup_map, _texture_index, _texture);
            }
            
            var _x_offset, _glyph_separation;
            
            if (arg2)
            {
                _x_offset = 0;
                _glyph_separation = _image_info.crop_width + arg3;
            }
            else
            {
                _x_offset = _image_info.x_offset;
                _glyph_separation = _sprite_width + arg3;
            }
            
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
            
            var _w = _image_info.crop_width;
            var _h = _image_info.crop_height;
            ds_grid_set(_font_glyph_data_grid, _i, (0 << 0), _glyph);
            ds_grid_set(_font_glyph_data_grid, _i, (1 << 0), _unicode);
            ds_grid_set(_font_glyph_data_grid, _i, (2 << 0), _bidi);
            ds_grid_set(_font_glyph_data_grid, _i, (3 << 0), _x_offset - _sprite_x_offset);
            ds_grid_set(_font_glyph_data_grid, _i, (4 << 0), _image_info.y_offset - _sprite_y_offset);
            ds_grid_set(_font_glyph_data_grid, _i, (5 << 0), _w);
            ds_grid_set(_font_glyph_data_grid, _i, (6 << 0), _h);
            ds_grid_set(_font_glyph_data_grid, _i, (7 << 0), _sprite_height);
            ds_grid_set(_font_glyph_data_grid, _i, (8 << 0), _glyph_separation);
            ds_grid_set(_font_glyph_data_grid, _i, (9 << 0), -_x_offset);
            ds_grid_set(_font_glyph_data_grid, _i, (10 << 0), 1);
            ds_grid_set(_font_glyph_data_grid, _i, (11 << 0), _texture);
            ds_grid_set(_font_glyph_data_grid, _i, (12 << 0), _uvs[0]);
            ds_grid_set(_font_glyph_data_grid, _i, (14 << 0), _uvs[1]);
            ds_grid_set(_font_glyph_data_grid, _i, (13 << 0), _uvs[2]);
            ds_grid_set(_font_glyph_data_grid, _i, (15 << 0), _uvs[3]);
            ds_grid_set(_font_glyph_data_grid, _i, (16 << 0), _sprite_name);
            ds_map_set(_font_glyphs_map, _unicode, _i);
        }
        
        _i++;
    }
    
    _font_data.__calculate_font_height();
    return arg1;
}
