function __scribble_gen_8_position_glyphs()
{
    static _generator_state = __scribble_initialize().__generator_state;
    
    var _temp_grid, _glyph_grid, _glyph_count, _model_max_width, _line_grid, _word_grid, _stretch_grid, _overall_bidi;
    
    with (_generator_state)
    {
        _glyph_grid = __glyph_grid;
        _word_grid = __word_grid;
        _stretch_grid = __stretch_grid;
        _line_grid = __line_grid;
        _temp_grid = __temp_grid;
        var _line_count = __line_count;
        _overall_bidi = __overall_bidi;
        _model_max_width = __model_max_width;
        _glyph_count = __glyph_count;
    }
    
    ds_grid_clear(_temp_grid, 0);
    ds_grid_multiply_region(_glyph_grid, 0, (17 << 0), _glyph_count - 1, (17 << 0), 1000);
    var _model_min_x = infinity;
    var _model_min_y = infinity;
    var _model_max_x = -infinity;
    var _model_max_y = -infinity;
    var _i = 0;
    
    repeat (__pages)
    {
        var _page_data = __pages_array[_i];
        var _alignment_width = (_model_max_width == infinity) ? __width : _model_max_width;
        var _pin_alignment_width = (_model_max_width == infinity) ? __width : _model_max_width;
        _alignment_width /= __fit_scale;
        _pin_alignment_width /= __fit_scale;
        var _page_min_x = infinity;
        var _page_max_x = -infinity;
        var _page_start_line = _page_data.__line_start;
        var _page_end_line = _page_data.__line_end;
        var _j = _page_start_line;
        
        repeat ((1 + _page_end_line) - _page_start_line)
        {
            var _line_x = ds_grid_get(_line_grid, _j, (0 << 0));
            var _line_y = ds_grid_get(_line_grid, _j, (1 << 0));
            var _line_word_start = ds_grid_get(_line_grid, _j, (2 << 0));
            var _line_word_end = ds_grid_get(_line_grid, _j, (3 << 0));
            var _line_width = ds_grid_get(_line_grid, _j, (4 << 0));
            var _line_height = ds_grid_get(_line_grid, _j, (5 << 0));
            var _line_halign = ds_grid_get(_line_grid, _j, (6 << 0));
            var _line_disable_justify = ds_grid_get(_line_grid, _j, (7 << 0));
            var _line_glyph_start = ds_grid_get(_word_grid, _line_word_start, (2 << 0));
            var _line_glyph_end = ds_grid_get(_word_grid, _line_word_end, (3 << 0));
            ds_grid_add_region(_glyph_grid, _line_glyph_start, (17 << 0), _line_glyph_end, (17 << 0), _j - _page_start_line);
            var _line_glyph_count = (1 + _line_glyph_end) - _line_glyph_start;
            ds_grid_set_grid_region(_temp_grid, _glyph_grid, _line_glyph_start, (6 << 0), _line_glyph_end, (6 << 0), 0, 0);
            ds_grid_multiply_region(_temp_grid, 0, 0, _line_glyph_count - 1, 0, -0.5);
            ds_grid_add_region(_temp_grid, 0, 0, _line_glyph_count - 1, 0, (0.5 * _line_height) + _line_y);
            ds_grid_add_grid_region(_glyph_grid, _temp_grid, 0, 0, _line_glyph_count - 1, 0, _line_glyph_start, (3 << 0));
            
            if (_page_data.__min_y != 0)
                ds_grid_add_region(_glyph_grid, _line_glyph_start, (3 << 0), _line_glyph_end, (3 << 0), _page_data.__min_y);
            
            var _line_stretch_count = 0;
            var _stretch_bidi = ds_grid_get(_word_grid, _line_word_start, (1 << 0));
            var _stretch_word_start = _line_word_start;
            var _w = _line_word_start;
            
            repeat ((1 + _line_word_end) - _line_word_start)
            {
                var _word_bidi = ds_grid_get(_word_grid, _w, (1 << 0));
                
                if (_word_bidi != _stretch_bidi)
                {
                    ds_grid_set(_stretch_grid, _line_stretch_count, (0 << 0), _stretch_word_start);
                    ds_grid_set(_stretch_grid, _line_stretch_count, (1 << 0), _w - 1);
                    ds_grid_set(_stretch_grid, _line_stretch_count, (2 << 0), _stretch_bidi);
                    _line_stretch_count++;
                    _stretch_word_start = _w;
                    _stretch_bidi = _word_bidi;
                }
                
                _w++;
            }
            
            if (_w > 0)
            {
                ds_grid_set(_stretch_grid, _line_stretch_count, (0 << 0), _stretch_word_start);
                ds_grid_set(_stretch_grid, _line_stretch_count, (1 << 0), _w - 1);
                ds_grid_set(_stretch_grid, _line_stretch_count, (2 << 0), _stretch_bidi);
                _line_stretch_count++;
            }
            
            if (_line_halign == 6 && _line_disable_justify)
                _line_halign = 3;
            
            var _justification_extra_spacing = 0;
            var _line_adjusted_width = _line_width;
            
            if (true && _line_halign != 0 && _line_halign != 3)
            {
                if (_line_word_end >= 1 && ds_grid_get(_word_grid, _line_word_end, (0 << 0)) == (0 << 0) && ds_grid_get(_word_grid, _line_word_end - 1, (0 << 0)) != (0 << 0))
                {
                    _line_adjusted_width -= ds_grid_get(_word_grid, _line_word_end, (4 << 0));
                    ds_grid_set(_word_grid, _line_word_end, (4 << 0), 0);
                    var _word_glyph = ds_grid_get(_word_grid, _line_word_end, (2 << 0));
                    ds_grid_set(_glyph_grid, _word_glyph, (4 << 0), 0);
                    ds_grid_set(_glyph_grid, _word_glyph, (7 << 0), 0);
                }
            }
            
            var _glyph_x = (_overall_bidi == (6 << 0)) ? -_line_x : _line_x;
            
            switch (_line_halign)
            {
                case 0:
                    _glyph_x += ((_overall_bidi == (6 << 0)) ? (_alignment_width - _line_adjusted_width) : 0);
                    break;
                
                case 3:
                    _glyph_x += ((_overall_bidi == (6 << 0)) ? (_pin_alignment_width - _line_adjusted_width) : 0);
                    break;
                
                case 1:
                    _glyph_x += -(_line_adjusted_width div 2);
                    break;
                
                case 2:
                    _glyph_x += -_line_adjusted_width;
                    break;
                
                case 4:
                    _glyph_x += ((_pin_alignment_width - _line_adjusted_width) div 2);
                    break;
                
                case 5:
                    _glyph_x += (_pin_alignment_width - _line_adjusted_width);
                    break;
                
                case 6:
                    if (_j != _page_end_line)
                    {
                        var _line_word_count = (1 + _line_word_end) - _line_word_start;
                        
                        if (_line_word_count > 1)
                            _justification_extra_spacing = (_pin_alignment_width - _line_adjusted_width) / (_line_word_count - 1);
                    }
                    
                    break;
            }
            
            _page_min_x = min(_page_min_x, _glyph_x);
            _page_max_x = max(_page_max_x, _glyph_x + _line_adjusted_width);
            _model_min_x = min(_model_min_x, _glyph_x);
            _model_max_x = max(_model_max_x, _glyph_x + _line_adjusted_width);
            var _k, _stretch_incr;
            
            if (_overall_bidi < (6 << 0))
            {
                _k = 0;
                _stretch_incr = 1;
            }
            else
            {
                _k = _line_stretch_count - 1;
                _stretch_incr = -1;
            }
            
            repeat (_line_stretch_count)
            {
                _stretch_word_start = ds_grid_get(_stretch_grid, _k, (0 << 0));
                var _stretch_word_end = ds_grid_get(_stretch_grid, _k, (1 << 0));
                _stretch_bidi = ds_grid_get(_stretch_grid, _k, (2 << 0));
                var _word_incr;
                
                if (_stretch_bidi < (6 << 0))
                {
                    _w = _stretch_word_start;
                    _word_incr = 1;
                }
                else
                {
                    _w = _stretch_word_end;
                    _word_incr = -1;
                }
                
                repeat ((1 + _stretch_word_end) - _stretch_word_start)
                {
                    var _word_glyph_start = ds_grid_get(_word_grid, _w, (2 << 0));
                    var _word_glyph_end = ds_grid_get(_word_grid, _w, (3 << 0));
                    ds_grid_add_region(_glyph_grid, _word_glyph_start, (2 << 0), _word_glyph_end, (2 << 0), _glyph_x);
                    _glyph_x += (ds_grid_get(_word_grid, _w, (4 << 0)) + _justification_extra_spacing);
                    _w += _word_incr;
                }
                
                _k += _stretch_incr;
            }
            
            _j++;
        }
        
        if (_page_min_x == infinity)
            _page_min_x = 0;
        
        _page_data.__min_x = _page_min_x;
        _page_data.__max_x = max(_page_min_x, _page_max_x);
        _model_min_y = min(_model_min_y, _page_data.__min_y);
        _model_max_y = max(_model_max_y, _page_data.__max_y);
        _i++;
    }
    
    if (_model_min_x == infinity)
        _model_min_x = 0;
    
    __min_x = _model_min_x;
    __min_y = _model_min_y;
    __max_x = max(_model_min_x, _model_max_x);
    __max_y = _model_max_y;
    __width = (1 + __max_x) - __min_x;
    __height = (1 + __max_y) - __min_y;
}
