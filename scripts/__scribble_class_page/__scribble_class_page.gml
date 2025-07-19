function __scribble_class_page() constructor
{
    static __scribble_state = __scribble_initialize().__state;
    static __gc_vbuff_refs = __scribble_initialize().__cache_state.__gc_vbuff_refs;
    static __gc_vbuff_ids = __scribble_initialize().__cache_state.__gc_vbuff_ids;
    static __gc_grid_refs = __scribble_initialize().__cache_state.__gc_grid_refs;
    static __gc_grid_ids = __scribble_initialize().__cache_state.__gc_grid_ids;
    
    static __submit = function(arg0)
    {
        static _u_vTexel = shader_get_uniform(__shd_scribble, "u_vTexel");
        static _u_fSDFRange = shader_get_uniform(__shd_scribble, "u_fSDFRange");
        static _u_fSDFThicknessOffset = shader_get_uniform(__shd_scribble, "u_fSDFThicknessOffset");
        static _u_fSecondDraw = shader_get_uniform(__shd_scribble, "u_fSecondDraw");
        static _u_fFontType = shader_get_uniform(__shd_scribble, "u_fFontType");
        
        if (true && !__frozen && __created_frame < __scribble_state.__frames)
            __freeze();
        
        var _i = 0;
        
        repeat (array_length(__vertex_buffer_array))
        {
            var _data = __vertex_buffer_array[_i];
            var _bilinear = _data[(8 << 0)];
            var _old_tex_filter;
            
            if (_bilinear != undefined)
            {
                _old_tex_filter = gpu_get_tex_filter();
                gpu_set_tex_filter(_bilinear);
            }
            
            if (_data[(6 << 0)] == (0 << 0))
            {
                shader_set_uniform_f(_u_fFontType, (0 << 0));
                vertex_submit(_data[(0 << 0)], pr_trianglelist, _data[(1 << 0)]);
            }
            else if (_data[(6 << 0)] == (1 << 0))
            {
                shader_set_uniform_f(_u_fFontType, (1 << 0));
                vertex_submit(_data[(0 << 0)], pr_trianglelist, _data[(1 << 0)]);
                
                if (arg0)
                {
                    shader_set_uniform_f(_u_fSecondDraw, 1);
                    vertex_submit(_data[(0 << 0)], pr_trianglelist, _data[(1 << 0)]);
                    shader_set_uniform_f(_u_fSecondDraw, 0);
                }
            }
            else if (_data[(6 << 0)] == (2 << 0))
            {
                shader_set_uniform_f(_u_fFontType, (2 << 0));
                shader_set_uniform_f(_u_vTexel, _data[(4 << 0)], _data[(5 << 0)]);
                shader_set_uniform_f(_u_fSDFRange, _data[(2 << 0)] ?? 0);
                shader_set_uniform_f(_u_fSDFThicknessOffset, __scribble_state.__sdf_thickness_offset + (_data[(3 << 0)] ?? 0));
                vertex_submit(_data[(0 << 0)], pr_trianglelist, _data[(1 << 0)]);
                
                if (arg0)
                {
                    shader_set_uniform_f(_u_fSecondDraw, 1);
                    vertex_submit(_data[(0 << 0)], pr_trianglelist, _data[(1 << 0)]);
                    shader_set_uniform_f(_u_fSecondDraw, 0);
                }
            }
            
            if (_bilinear != undefined)
                gpu_set_tex_filter(_old_tex_filter);
            
            _i++;
        }
    };
    
    static __freeze = function()
    {
        if (!__frozen)
        {
            var _i = 0;
            
            repeat (array_length(__vertex_buffer_array))
            {
                vertex_freeze(__vertex_buffer_array[_i][(0 << 0)]);
                _i++;
            }
            
            __frozen = true;
        }
    };
    
    static __get_glyph_data = function(arg0)
    {
        __scribble_error("Cannot get glyph data, SCRIBBLE_ALLOW_GLYPH_DATA_GETTER = <false>\nPlease set SCRIBBLE_ALLOW_GLYPH_DATA_GETTER to <true> to get glyph data");
        
        if (arg0 < 0)
        {
            return 
            {
                unicode: 0,
                left: ds_grid_get(__glyph_grid, 0, (1 << 0)),
                top: ds_grid_get(__glyph_grid, 0, (2 << 0)),
                right: ds_grid_get(__glyph_grid, 0, (1 << 0)),
                bottom: ds_grid_get(__glyph_grid, 0, (4 << 0))
            };
        }
        else
        {
            arg0 = min(arg0, __glyph_count - 1);
            return 
            {
                unicode: ds_grid_get(__glyph_grid, arg0, (0 << 0)),
                left: ds_grid_get(__glyph_grid, arg0, (1 << 0)),
                top: ds_grid_get(__glyph_grid, arg0, (2 << 0)),
                right: ds_grid_get(__glyph_grid, arg0, (3 << 0)),
                bottom: ds_grid_get(__glyph_grid, arg0, (4 << 0))
            };
        }
    };
    
    static __get_vertex_buffer = function(arg0, arg1)
    {
        static _vertex_format = undefined;
        
        var _pxrange, _thicknessOffset, _fontType, _bilinear;
        
        if (arg1 == undefined)
        {
            _fontType = (0 << 0);
            _pxrange = undefined;
            _thicknessOffset = undefined;
            _bilinear = undefined;
        }
        else
        {
            var _fontData = __scribble_get_font_data(arg1);
            _fontType = _fontData.__fontType;
            _pxrange = _fontData.__sdf_pxrange;
            _thicknessOffset = _fontData.__sdf_thickness_offset;
            _bilinear = _fontData.__bilinear;
        }
        
        var _pointer_string = string(arg0);
        var _data = variable_struct_get(__texture_to_vertex_buffer_dict, _pointer_string);
        
        if (_data == undefined)
        {
            if (_vertex_format == undefined)
            {
                vertex_format_begin();
                vertex_format_add_position_3d();
                vertex_format_add_normal();
                vertex_format_add_colour();
                vertex_format_add_texcoord();
                vertex_format_add_custom(vertex_type_float2, vertex_usage_color);
                _vertex_format = vertex_format_end();
            }
            
            var _vbuff = vertex_create_buffer();
            vertex_begin(_vbuff, _vertex_format);
            array_push(__gc_vbuff_refs, weak_ref_create(self));
            array_push(__gc_vbuff_ids, _vbuff);
            _data = array_create((9 << 0));
            _data[(0 << 0)] = _vbuff;
            _data[(1 << 0)] = arg0;
            _data[(2 << 0)] = _pxrange;
            _data[(3 << 0)] = _thicknessOffset;
            _data[(4 << 0)] = texture_get_texel_width(arg0);
            _data[(5 << 0)] = texture_get_texel_height(arg0);
            _data[(6 << 0)] = _fontType;
            _data[(8 << 0)] = _bilinear;
            __vertex_buffer_array[array_length(__vertex_buffer_array)] = _data;
            variable_struct_set(__texture_to_vertex_buffer_dict, _pointer_string, _data);
            return _vbuff;
        }
        else
        {
            return _data[(0 << 0)];
        }
    };
    
    static __ensure_glyph_grid = function()
    {
        if (__glyph_grid == undefined)
        {
            __glyph_grid = ds_grid_create(__glyph_count, (5 << 0));
            array_push(__gc_grid_refs, weak_ref_create(self));
            array_push(__gc_grid_ids, __glyph_grid);
        }
        
        return __glyph_grid;
    };
    
    static __finalize_vertex_buffers = function(arg0)
    {
        var _i = 0;
        
        repeat (array_length(__vertex_buffer_array))
        {
            var _vbuff = __vertex_buffer_array[_i][(0 << 0)];
            vertex_end(_vbuff);
            
            if (arg0)
                vertex_freeze(_vbuff);
            
            _i++;
        }
        
        __frozen = arg0;
    };
    
    static __flush = function()
    {
        var _i = 0;
        
        repeat (array_length(__vertex_buffer_array))
        {
            var _vbuff = __vertex_buffer_array[_i][(0 << 0)];
            vertex_delete_buffer(_vbuff);
            var _index = __scribble_array_find_index(__gc_vbuff_ids, _vbuff);
            
            if (_index >= 0)
            {
                array_delete(__gc_vbuff_refs, _index, 1);
                array_delete(__gc_vbuff_ids, _index, 1);
            }
            
            _i++;
        }
        
        __texture_to_vertex_buffer_dict = {};
        array_resize(__vertex_buffer_array, 0);
        
        if (__glyph_grid != undefined)
        {
            var _index = __scribble_array_find_index(__gc_grid_ids, __glyph_grid);
            
            if (_index >= 0)
            {
                array_delete(__gc_grid_refs, _index, 1);
                array_delete(__gc_grid_ids, _index, 1);
            }
            
            ds_grid_destroy(__glyph_grid);
            __glyph_grid = undefined;
        }
    };
    
    __text = "";
    __glyph_grid = undefined;
    __created_frame = __scribble_state.__frames;
    __frozen = undefined;
    __character_count = 0;
    __glyph_start = undefined;
    __glyph_end = undefined;
    __glyph_count = 0;
    __line_start = undefined;
    __line_end = undefined;
    __line_count = 0;
    __width = 0;
    __height = 0;
    __min_x = 0;
    __min_y = 0;
    __max_x = 0;
    __max_y = 0;
    __vertex_buffer_array = [];
    __texture_to_vertex_buffer_dict = {};
    __char_events = {};
    __line_events = {};
    __region_array = [];
}
