function __scribble_gen_7_build_pages()
{
    static _generator_state = __scribble_initialize().__generator_state;
    static _animation_randomize_array = [];
    
    var _element, _model_max_height, _word_grid, _line_grid, _line_count, _line_spacing_add, _line_spacing_multiply, _glyph_grid, _randomize_animation;
    
    with (_generator_state)
    {
        _glyph_grid = __glyph_grid;
        _word_grid = __word_grid;
        _line_grid = __line_grid;
        _element = __element;
        _model_max_height = __model_max_height;
        _line_count = __line_count;
        _line_spacing_add = __line_spacing_add;
        _line_spacing_multiply = __line_spacing_multiply;
        _randomize_animation = __element.__randomize_animation;
    }
    
    var _wrap_no_pages = _element.__wrap_no_pages;
    var _simulated_model_height = _wrap_no_pages ? infinity : (_model_max_height / __fit_scale);
    var _model_height = 0;
    var _page_data = __new_page();
    _page_data.__line_start = 0;
    _page_data.__glyph_start = ds_grid_get(_word_grid, ds_grid_get(_line_grid, 0, (2 << 0)), (2 << 0));
    var _page_start_line = 0;
    var _line_y = 0;
    var _line_max_y = 0;
    var _i = 0;
    
    repeat (_line_count)
    {
        var _line_height = ds_grid_get(_line_grid, _i, (5 << 0));
        var _starts_manual_page = ds_grid_get(_line_grid, _i, (8 << 0));
        
        if (!_starts_manual_page && ((_line_y + _line_height) < _simulated_model_height || _page_start_line >= _i))
        {
            ds_grid_set(_line_grid, _i, (1 << 0), _line_y);
            _line_max_y = _line_y + _line_height;
            _line_y += (_line_spacing_add + (_line_height * _line_spacing_multiply));
        }
        else
        {
            _model_height = max(_model_height, _line_max_y);
            _page_end_line = _i - 1;
            _page_data.__line_end = _page_end_line;
            _page_data.__line_count = (1 + _page_data.__line_end) - _page_data.__line_start;
            _page_data.__glyph_end = ds_grid_get(_word_grid, ds_grid_get(_line_grid, _page_end_line, (3 << 0)), (3 << 0));
            _page_data.__glyph_count = (1 + _page_data.__glyph_end) - _page_data.__glyph_start;
            _page_data.__width = ds_grid_get_max(_line_grid, _page_start_line, (4 << 0), _page_end_line, (4 << 0));
            _page_data.__height = _line_max_y;
            
            if (__valign == 1)
            {
                _page_data.__min_y = -(_line_max_y div 2);
                _page_data.__max_y = _line_max_y div 2;
            }
            else if (__valign == 2)
            {
                _page_data.__min_y = -_line_max_y;
                _page_data.__max_y = 0;
            }
            else
            {
                _page_data.__min_y = 0;
                _page_data.__max_y = _line_max_y;
            }
            
            _page_anim_start = ds_grid_get(_glyph_grid, _page_data.__glyph_start, (17 << 0));
            _page_anim_end = ds_grid_get(_glyph_grid, _page_data.__glyph_end, (17 << 0));
            _page_data.__character_count = (1 + _page_anim_end) - _page_anim_start;
            
            if (_randomize_animation)
            {
                array_resize(_animation_randomize_array, _page_data.__character_count);
                _i = 0;
                
                repeat (_page_data.__character_count)
                {
                    _animation_randomize_array[_i] = _i;
                    _i++;
                }
                
                array_sort(_animation_randomize_array, function()
                {
                    return choose(-1, 1);
                });
                var _glyph_start = _page_data.__glyph_start;
                _i = 0;
                
                repeat (_page_data.__character_count)
                {
                    ds_grid_set(_glyph_grid, _glyph_start + _i, (17 << 0), _animation_randomize_array[_i]);
                    _i++;
                }
            }
            else
            {
                ds_grid_add_region(_glyph_grid, _page_data.__glyph_start, (17 << 0), _page_data.__glyph_end, (17 << 0), -_page_anim_start);
            }
            
            _page_data = __new_page();
            _page_data.__line_start = _i;
            _page_data.__glyph_start = ds_grid_get(_word_grid, ds_grid_get(_line_grid, _i, (2 << 0)), (2 << 0));
            _page_start_line = _i;
            ds_grid_set(_line_grid, _i, (1 << 0), 0);
            _line_max_y = _line_height;
            _line_y = _line_spacing_add + (_line_height * _line_spacing_multiply);
        }
        
        _i++;
    }
    
    _model_height = max(_model_height, _line_max_y);
    var _page_end_line = _i - 1;
    _page_data.__line_end = _page_end_line;
    _page_data.__line_count = (1 + _page_data.__line_end) - _page_data.__line_start;
    _page_data.__glyph_end = ds_grid_get(_word_grid, ds_grid_get(_line_grid, _page_end_line, (3 << 0)), (3 << 0));
    _page_data.__glyph_count = (1 + _page_data.__glyph_end) - _page_data.__glyph_start;
    _page_data.__width = ds_grid_get_max(_line_grid, _page_start_line, (4 << 0), _page_end_line, (4 << 0));
    _page_data.__height = _line_max_y;
    
    if (__valign == 1)
    {
        _page_data.__min_y = -(_line_max_y div 2);
        _page_data.__max_y = _line_max_y div 2;
    }
    else if (__valign == 2)
    {
        _page_data.__min_y = -_line_max_y;
        _page_data.__max_y = 0;
    }
    else
    {
        _page_data.__min_y = 0;
        _page_data.__max_y = _line_max_y;
    }
    
    var _page_anim_start = ds_grid_get(_glyph_grid, _page_data.__glyph_start, (17 << 0));
    var _page_anim_end = ds_grid_get(_glyph_grid, _page_data.__glyph_end, (17 << 0));
    _page_data.__character_count = (1 + _page_anim_end) - _page_anim_start;
    
    if (_randomize_animation)
    {
        array_resize(_animation_randomize_array, _page_data.__character_count);
        _i = 0;
        
        repeat (_page_data.__character_count)
        {
            _animation_randomize_array[_i] = _i;
            _i++;
        }
        
        array_sort(_animation_randomize_array, function()
        {
            return choose(-1, 1);
        });
        var _glyph_start = _page_data.__glyph_start;
        _i = 0;
        
        repeat (_page_data.__character_count)
        {
            ds_grid_set(_glyph_grid, _glyph_start + _i, (17 << 0), _animation_randomize_array[_i]);
            _i++;
        }
    }
    else
    {
        ds_grid_add_region(_glyph_grid, _page_data.__glyph_start, (17 << 0), _page_data.__glyph_end, (17 << 0), -_page_anim_start);
    }
    
    __height = _model_height;
}
