function __scribble_gen_6_build_lines()
{
    static _generator_state = __scribble_initialize().__generator_state;
    
    var _model_max_width, _model_max_height, _word_count, _glyph_grid, _control_grid, _line_grid, _word_grid, _wrap_no_pages, _line_height_min, _line_height_max, _line_spacing_add, _line_spacing_multiply, _temp_grid, _wrap_max_scale, _wrap_apply;
    
    with (_generator_state)
    {
        _glyph_grid = __glyph_grid;
        _word_grid = __word_grid;
        _line_grid = __line_grid;
        _control_grid = __control_grid;
        _temp_grid = __temp_grid;
        var _element = __element;
        _word_count = __word_count;
        _line_height_min = __line_height_min;
        _line_height_max = __line_height_max;
        _line_spacing_add = __line_spacing_add;
        _line_spacing_multiply = __line_spacing_multiply;
        _wrap_no_pages = _element.__wrap_no_pages;
        _wrap_max_scale = _element.__wrap_max_scale;
        _wrap_apply = _element.__wrap_apply;
        _model_max_width = _wrap_apply ? __model_max_width : infinity;
        _model_max_height = _wrap_apply ? __model_max_height : infinity;
    }
    
    var _fit_to_box_iterations = 0;
    var _lower_limit = undefined;
    var _upper_limit = undefined;
    var _line_count, _i, _simulated_model_max_width;
    
    repeat (max(1, 7))
    {
        var _line_max_y = 0;
        _simulated_model_max_width = _model_max_width / __fit_scale;
        var _simulated_model_max_height = _model_max_height / __fit_scale;
        _line_count = 0;
        var _word_broken = false;
        
        if (_word_count > 0)
        {
            var _state_halign = 0;
            var _control_index = 0;
            var _word_x = 0;
            var _line_y = 0;
            var _indent_x = 0;
            var _control_delta = ds_grid_get(_glyph_grid, 0, (16 << 0)) - _control_index;
            
            repeat (_control_delta)
            {
                if (ds_grid_get(_control_grid, _control_index, (0 << 0)) == (1 << 0))
                    _state_halign = ds_grid_get(_control_grid, _control_index, (1 << 0));
                
                _control_index++;
            }
            
            _i = 0;
            var _word_width = 0;
            var _line_word_start = 0;
            ds_grid_set(_line_grid, _line_count, (0 << 0), _indent_x);
            ds_grid_set(_line_grid, _line_count, (2 << 0), _line_word_start);
            ds_grid_set(_line_grid, _line_count, (6 << 0), _state_halign);
            ds_grid_set(_line_grid, _line_count, (7 << 0), false);
            ds_grid_set(_line_grid, _line_count, (8 << 0), false);
            
            if (1 && ds_grid_get(_word_grid, _line_word_start, (1 << 0)) < (6 << 0))
            {
                var _word_glyph_start = ds_grid_get(_word_grid, _line_word_start, (2 << 0));
                var _word_glyph_end = ds_grid_get(_word_grid, _line_word_start, (3 << 0));
                var _left_correction = ds_grid_get(_glyph_grid, _word_glyph_start, (8 << 0));
                
                if ((_left_correction > 0 && true) || (_left_correction < 0 && false))
                {
                    ds_grid_set(_word_grid, _line_word_start, (4 << 0), ds_grid_get(_word_grid, _line_word_start, (4 << 0)) + _left_correction);
                    _word_width += _left_correction;
                }
            }
            
            _word_x = _indent_x;
            
            repeat (_word_count)
            {
                _word_width = ds_grid_get(_word_grid, _i, (4 << 0));
                var _word_start_glyph = ds_grid_get(_word_grid, _i, (2 << 0));
                _control_delta = ds_grid_get(_glyph_grid, _word_start_glyph, (16 << 0)) - _control_index;
                
                repeat (_control_delta)
                {
                    switch (ds_grid_get(_control_grid, _control_index, (0 << 0)))
                    {
                        case (1 << 0):
                            _state_halign = ds_grid_get(_control_grid, _control_index, (1 << 0));
                            break;
                        
                        case (7 << 0):
                            _indent_x = _word_x;
                            break;
                        
                        case (8 << 0):
                            _indent_x = 0;
                            break;
                    }
                    
                    _control_index++;
                }
                
                switch (_state_halign)
                {
                    case 0:
                        _generator_state.__uses_halign_left = true;
                        break;
                    
                    case 1:
                        _generator_state.__uses_halign_center = true;
                        break;
                    
                    case 2:
                        _generator_state.__uses_halign_right = true;
                        break;
                }
                
                if ((_word_x + _word_width) > _simulated_model_max_width)
                {
                    __wrapped = true;
                    
                    if (_word_width >= _simulated_model_max_width)
                    {
                        _word_broken = true;
                        
                        if (_wrap_no_pages)
                        {
                            _line_word_end = _i;
                            var _found_line_height = ds_grid_get_max(_word_grid, _line_word_start, (5 << 0), _line_word_end, (5 << 0));
                            var _line_height;
                            
                            if (_found_line_height < _line_height_min)
                            {
                                if (((_found_line_height / 2) == (_found_line_height div 2)) == ((_line_height_min / 2) == (_line_height_min div 2)))
                                    _line_height = _line_height_min;
                                else
                                    _line_height = _line_height_min + 1;
                            }
                            else if (_found_line_height > _line_height_max)
                            {
                                if (((_found_line_height / 2) == (_found_line_height div 2)) == ((_line_height_max / 2) == (_line_height_max div 2)))
                                    _line_height = _line_height_max;
                                else
                                    _line_height = _line_height_max - 1;
                            }
                            else
                            {
                                _line_height = _found_line_height;
                            }
                            
                            ds_grid_set(_line_grid, _line_count, (3 << 0), _line_word_end);
                            ds_grid_set(_line_grid, _line_count, (4 << 0), _word_x);
                            ds_grid_set(_line_grid, _line_count, (5 << 0), _line_height);
                            _line_count++;
                            
                            if ((_line_y + _line_height) > _line_max_y)
                                _line_max_y = _line_y + _line_height;
                            
                            _line_y += (_line_spacing_add + (_line_height * _line_spacing_multiply));
                            _line_y += _line_height;
                            break;
                        }
                        
                        if (ds_grid_get(_word_grid, _i, (1 << 0)) >= (6 << 0))
                        {
                            _line_word_end = _i;
                            var _found_line_height = ds_grid_get_max(_word_grid, _line_word_start, (5 << 0), _line_word_end, (5 << 0));
                            var _line_height;
                            
                            if (_found_line_height < _line_height_min)
                            {
                                if (((_found_line_height / 2) == (_found_line_height div 2)) == ((_line_height_min / 2) == (_line_height_min div 2)))
                                    _line_height = _line_height_min;
                                else
                                    _line_height = _line_height_min + 1;
                            }
                            else if (_found_line_height > _line_height_max)
                            {
                                if (((_found_line_height / 2) == (_found_line_height div 2)) == ((_line_height_max / 2) == (_line_height_max div 2)))
                                    _line_height = _line_height_max;
                                else
                                    _line_height = _line_height_max - 1;
                            }
                            else
                            {
                                _line_height = _found_line_height;
                            }
                            
                            ds_grid_set(_line_grid, _line_count, (3 << 0), _line_word_end);
                            ds_grid_set(_line_grid, _line_count, (4 << 0), _word_x);
                            ds_grid_set(_line_grid, _line_count, (5 << 0), _line_height);
                            _line_count++;
                            
                            if ((_line_y + _line_height) > _line_max_y)
                                _line_max_y = _line_y + _line_height;
                            
                            _line_y += (_line_spacing_add + (_line_height * _line_spacing_multiply));
                            _line_word_start = _i + 1;
                            ds_grid_set(_line_grid, _line_count, (0 << 0), _indent_x);
                            ds_grid_set(_line_grid, _line_count, (2 << 0), _line_word_start);
                            ds_grid_set(_line_grid, _line_count, (6 << 0), _state_halign);
                            ds_grid_set(_line_grid, _line_count, (7 << 0), false);
                            ds_grid_set(_line_grid, _line_count, (8 << 0), false);
                            
                            if (1 && ds_grid_get(_word_grid, _line_word_start, (1 << 0)) < (6 << 0))
                            {
                                var _word_glyph_start = ds_grid_get(_word_grid, _line_word_start, (2 << 0));
                                var _word_glyph_end = ds_grid_get(_word_grid, _line_word_start, (3 << 0));
                                var _left_correction = ds_grid_get(_glyph_grid, _word_glyph_start, (8 << 0));
                                
                                if ((_left_correction > 0 && true) || (_left_correction < 0 && false))
                                {
                                    ds_grid_set(_word_grid, _line_word_start, (4 << 0), ds_grid_get(_word_grid, _line_word_start, (4 << 0)) + _left_correction);
                                    _word_width += _left_correction;
                                }
                            }
                            
                            _word_x = _indent_x;
                        }
                        else
                        {
                            var _stashed_word_count = _word_count - (_i + 1);
                            ds_grid_set_grid_region(_temp_grid, _word_grid, _i + 1, 0, _word_count, 5, 0, 0);
                            var _original_word_bidi_raw = ds_grid_get(_word_grid, _i, (0 << 0));
                            var _original_word_bidi = ds_grid_get(_word_grid, _i, (1 << 0));
                            var _original_word_glyph_start = ds_grid_get(_word_grid, _i, (2 << 0));
                            var _original_word_glyph_end = ds_grid_get(_word_grid, _i, (3 << 0));
                            var _original_word_height = ds_grid_get(_word_grid, _i, (5 << 0));
                            
                            if (1 && ds_grid_get(_word_grid, _i, (1 << 0)) < (6 << 0))
                            {
                                var _left_correction = ds_grid_get(_glyph_grid, _original_word_glyph_start, (8 << 0));
                                
                                if ((_left_correction > 0 && true) || (_left_correction < 0 && false))
                                    _word_x += _left_correction;
                            }
                            
                            var _new_word_start_x = _word_x;
                            var _new_word_glyph_start = _original_word_glyph_start;
                            var _j = _new_word_glyph_start;
                            var _glyph_width = ds_grid_get(_glyph_grid, _j, (7 << 0));
                            
                            if ((_word_x + _glyph_width) >= _simulated_model_max_width && _i > _line_word_start)
                            {
                                _line_word_end = _i - 1;
                                var _found_line_height = ds_grid_get_max(_word_grid, _line_word_start, (5 << 0), _line_word_end, (5 << 0));
                                var _line_height;
                                
                                if (_found_line_height < _line_height_min)
                                {
                                    if (((_found_line_height / 2) == (_found_line_height div 2)) == ((_line_height_min / 2) == (_line_height_min div 2)))
                                        _line_height = _line_height_min;
                                    else
                                        _line_height = _line_height_min + 1;
                                }
                                else if (_found_line_height > _line_height_max)
                                {
                                    if (((_found_line_height / 2) == (_found_line_height div 2)) == ((_line_height_max / 2) == (_line_height_max div 2)))
                                        _line_height = _line_height_max;
                                    else
                                        _line_height = _line_height_max - 1;
                                }
                                else
                                {
                                    _line_height = _found_line_height;
                                }
                                
                                ds_grid_set(_line_grid, _line_count, (3 << 0), _line_word_end);
                                ds_grid_set(_line_grid, _line_count, (4 << 0), _word_x);
                                ds_grid_set(_line_grid, _line_count, (5 << 0), _line_height);
                                _line_count++;
                                
                                if ((_line_y + _line_height) > _line_max_y)
                                    _line_max_y = _line_y + _line_height;
                                
                                _line_y += (_line_spacing_add + (_line_height * _line_spacing_multiply));
                                _line_word_start = _i;
                                ds_grid_set(_line_grid, _line_count, (0 << 0), _indent_x);
                                ds_grid_set(_line_grid, _line_count, (2 << 0), _line_word_start);
                                ds_grid_set(_line_grid, _line_count, (6 << 0), _state_halign);
                                ds_grid_set(_line_grid, _line_count, (7 << 0), false);
                                ds_grid_set(_line_grid, _line_count, (8 << 0), false);
                                
                                if (1 && ds_grid_get(_word_grid, _line_word_start, (1 << 0)) < (6 << 0))
                                {
                                    var _word_glyph_start = ds_grid_get(_word_grid, _line_word_start, (2 << 0));
                                    var _word_glyph_end = ds_grid_get(_word_grid, _line_word_start, (3 << 0));
                                    var _left_correction = ds_grid_get(_glyph_grid, _word_glyph_start, (8 << 0));
                                    
                                    if ((_left_correction > 0 && true) || (_left_correction < 0 && false))
                                    {
                                        ds_grid_set(_word_grid, _line_word_start, (4 << 0), ds_grid_get(_word_grid, _line_word_start, (4 << 0)) + _left_correction);
                                        _word_width += _left_correction;
                                    }
                                }
                                
                                _word_x = _indent_x;
                                _new_word_start_x = 0;
                            }
                            
                            _word_x += _glyph_width;
                            _j++;
                            
                            repeat ((1 + _original_word_glyph_end) - _j)
                            {
                                _glyph_width = ds_grid_get(_glyph_grid, _j, (7 << 0));
                                
                                if ((_word_x + _glyph_width) >= _simulated_model_max_width)
                                {
                                    ds_grid_set(_word_grid, _i, (0 << 0), _original_word_bidi_raw);
                                    ds_grid_set(_word_grid, _i, (1 << 0), _original_word_bidi);
                                    ds_grid_set(_word_grid, _i, (2 << 0), _new_word_glyph_start);
                                    ds_grid_set(_word_grid, _i, (3 << 0), _j - 1);
                                    ds_grid_set(_word_grid, _i, (4 << 0), _word_x - _new_word_start_x);
                                    ds_grid_set(_word_grid, _i, (5 << 0), _original_word_height);
                                    ds_grid_add_region(_glyph_grid, _j, (2 << 0), _original_word_glyph_end, (2 << 0), -(_word_x - _new_word_start_x));
                                    _line_word_end = _i;
                                    var _found_line_height = ds_grid_get_max(_word_grid, _line_word_start, (5 << 0), _line_word_end, (5 << 0));
                                    var _line_height;
                                    
                                    if (_found_line_height < _line_height_min)
                                    {
                                        if (((_found_line_height / 2) == (_found_line_height div 2)) == ((_line_height_min / 2) == (_line_height_min div 2)))
                                            _line_height = _line_height_min;
                                        else
                                            _line_height = _line_height_min + 1;
                                    }
                                    else if (_found_line_height > _line_height_max)
                                    {
                                        if (((_found_line_height / 2) == (_found_line_height div 2)) == ((_line_height_max / 2) == (_line_height_max div 2)))
                                            _line_height = _line_height_max;
                                        else
                                            _line_height = _line_height_max - 1;
                                    }
                                    else
                                    {
                                        _line_height = _found_line_height;
                                    }
                                    
                                    ds_grid_set(_line_grid, _line_count, (3 << 0), _line_word_end);
                                    ds_grid_set(_line_grid, _line_count, (4 << 0), _word_x);
                                    ds_grid_set(_line_grid, _line_count, (5 << 0), _line_height);
                                    _line_count++;
                                    
                                    if ((_line_y + _line_height) > _line_max_y)
                                        _line_max_y = _line_y + _line_height;
                                    
                                    _line_y += (_line_spacing_add + (_line_height * _line_spacing_multiply));
                                    _line_word_start = _i + 1;
                                    ds_grid_set(_line_grid, _line_count, (0 << 0), _indent_x);
                                    ds_grid_set(_line_grid, _line_count, (2 << 0), _line_word_start);
                                    ds_grid_set(_line_grid, _line_count, (6 << 0), _state_halign);
                                    ds_grid_set(_line_grid, _line_count, (7 << 0), false);
                                    ds_grid_set(_line_grid, _line_count, (8 << 0), false);
                                    
                                    if (1 && ds_grid_get(_word_grid, _line_word_start, (1 << 0)) < (6 << 0))
                                    {
                                        var _word_glyph_start = ds_grid_get(_word_grid, _line_word_start, (2 << 0));
                                        var _word_glyph_end = ds_grid_get(_word_grid, _line_word_start, (3 << 0));
                                        var _left_correction = ds_grid_get(_glyph_grid, _word_glyph_start, (8 << 0));
                                        
                                        if ((_left_correction > 0 && true) || (_left_correction < 0 && false))
                                        {
                                            ds_grid_set(_word_grid, _line_word_start, (4 << 0), ds_grid_get(_word_grid, _line_word_start, (4 << 0)) + _left_correction);
                                            _word_width += _left_correction;
                                        }
                                    }
                                    
                                    _word_x = _indent_x;
                                    _new_word_start_x = 0;
                                    _new_word_glyph_start = _j;
                                    _i++;
                                    _word_count++;
                                }
                                
                                _word_x += _glyph_width;
                                _j++;
                            }
                            
                            ds_grid_set(_word_grid, _i, (0 << 0), _original_word_bidi_raw);
                            ds_grid_set(_word_grid, _i, (1 << 0), _original_word_bidi);
                            ds_grid_set(_word_grid, _i, (2 << 0), _new_word_glyph_start);
                            ds_grid_set(_word_grid, _i, (3 << 0), _j - 1);
                            ds_grid_set(_word_grid, _i, (4 << 0), _word_x - _new_word_start_x);
                            ds_grid_set(_word_grid, _i, (5 << 0), _original_word_height);
                            ds_grid_set_grid_region(_word_grid, _temp_grid, 0, 0, _stashed_word_count, 5, _i + 1, 0);
                            _word_width = 0;
                        }
                    }
                    else if (true && ds_grid_get(_word_grid, _i, (0 << 0)) == (0 << 0))
                    {
                        _word_x += _word_width;
                        _line_word_end = _i;
                        var _found_line_height = ds_grid_get_max(_word_grid, _line_word_start, (5 << 0), _line_word_end, (5 << 0));
                        var _line_height;
                        
                        if (_found_line_height < _line_height_min)
                        {
                            if (((_found_line_height / 2) == (_found_line_height div 2)) == ((_line_height_min / 2) == (_line_height_min div 2)))
                                _line_height = _line_height_min;
                            else
                                _line_height = _line_height_min + 1;
                        }
                        else if (_found_line_height > _line_height_max)
                        {
                            if (((_found_line_height / 2) == (_found_line_height div 2)) == ((_line_height_max / 2) == (_line_height_max div 2)))
                                _line_height = _line_height_max;
                            else
                                _line_height = _line_height_max - 1;
                        }
                        else
                        {
                            _line_height = _found_line_height;
                        }
                        
                        ds_grid_set(_line_grid, _line_count, (3 << 0), _line_word_end);
                        ds_grid_set(_line_grid, _line_count, (4 << 0), _word_x);
                        ds_grid_set(_line_grid, _line_count, (5 << 0), _line_height);
                        _line_count++;
                        
                        if ((_line_y + _line_height) > _line_max_y)
                            _line_max_y = _line_y + _line_height;
                        
                        _line_y += (_line_spacing_add + (_line_height * _line_spacing_multiply));
                        _line_word_start = _i + 1;
                        ds_grid_set(_line_grid, _line_count, (0 << 0), _indent_x);
                        ds_grid_set(_line_grid, _line_count, (2 << 0), _line_word_start);
                        ds_grid_set(_line_grid, _line_count, (6 << 0), _state_halign);
                        ds_grid_set(_line_grid, _line_count, (7 << 0), false);
                        ds_grid_set(_line_grid, _line_count, (8 << 0), false);
                        
                        if (1 && ds_grid_get(_word_grid, _line_word_start, (1 << 0)) < (6 << 0))
                        {
                            var _word_glyph_start = ds_grid_get(_word_grid, _line_word_start, (2 << 0));
                            var _word_glyph_end = ds_grid_get(_word_grid, _line_word_start, (3 << 0));
                            var _left_correction = ds_grid_get(_glyph_grid, _word_glyph_start, (8 << 0));
                            
                            if ((_left_correction > 0 && true) || (_left_correction < 0 && false))
                            {
                                ds_grid_set(_word_grid, _line_word_start, (4 << 0), ds_grid_get(_word_grid, _line_word_start, (4 << 0)) + _left_correction);
                                _word_width += _left_correction;
                            }
                        }
                        
                        _word_x = _indent_x;
                        _word_width = 0;
                    }
                    else
                    {
                        _line_word_end = _i - 1;
                        var _found_line_height = ds_grid_get_max(_word_grid, _line_word_start, (5 << 0), _line_word_end, (5 << 0));
                        var _line_height;
                        
                        if (_found_line_height < _line_height_min)
                        {
                            if (((_found_line_height / 2) == (_found_line_height div 2)) == ((_line_height_min / 2) == (_line_height_min div 2)))
                                _line_height = _line_height_min;
                            else
                                _line_height = _line_height_min + 1;
                        }
                        else if (_found_line_height > _line_height_max)
                        {
                            if (((_found_line_height / 2) == (_found_line_height div 2)) == ((_line_height_max / 2) == (_line_height_max div 2)))
                                _line_height = _line_height_max;
                            else
                                _line_height = _line_height_max - 1;
                        }
                        else
                        {
                            _line_height = _found_line_height;
                        }
                        
                        ds_grid_set(_line_grid, _line_count, (3 << 0), _line_word_end);
                        ds_grid_set(_line_grid, _line_count, (4 << 0), _word_x);
                        ds_grid_set(_line_grid, _line_count, (5 << 0), _line_height);
                        _line_count++;
                        
                        if ((_line_y + _line_height) > _line_max_y)
                            _line_max_y = _line_y + _line_height;
                        
                        _line_y += (_line_spacing_add + (_line_height * _line_spacing_multiply));
                        _line_word_start = _i;
                        ds_grid_set(_line_grid, _line_count, (0 << 0), _indent_x);
                        ds_grid_set(_line_grid, _line_count, (2 << 0), _line_word_start);
                        ds_grid_set(_line_grid, _line_count, (6 << 0), _state_halign);
                        ds_grid_set(_line_grid, _line_count, (7 << 0), false);
                        ds_grid_set(_line_grid, _line_count, (8 << 0), false);
                        
                        if (1 && ds_grid_get(_word_grid, _line_word_start, (1 << 0)) < (6 << 0))
                        {
                            var _word_glyph_start = ds_grid_get(_word_grid, _line_word_start, (2 << 0));
                            var _word_glyph_end = ds_grid_get(_word_grid, _line_word_start, (3 << 0));
                            var _left_correction = ds_grid_get(_glyph_grid, _word_glyph_start, (8 << 0));
                            
                            if ((_left_correction > 0 && true) || (_left_correction < 0 && false))
                            {
                                ds_grid_set(_word_grid, _line_word_start, (4 << 0), ds_grid_get(_word_grid, _line_word_start, (4 << 0)) + _left_correction);
                                _word_width += _left_correction;
                            }
                        }
                        
                        _word_x = _indent_x;
                    }
                }
                else
                {
                    var _glyph_start_ord = ds_grid_get(_glyph_grid, _word_start_glyph, (0 << 0));
                    
                    if (_glyph_start_ord == 10)
                    {
                        _line_word_end = _i;
                        var _found_line_height = ds_grid_get_max(_word_grid, _line_word_start, (5 << 0), _line_word_end, (5 << 0));
                        var _line_height;
                        
                        if (_found_line_height < _line_height_min)
                        {
                            if (((_found_line_height / 2) == (_found_line_height div 2)) == ((_line_height_min / 2) == (_line_height_min div 2)))
                                _line_height = _line_height_min;
                            else
                                _line_height = _line_height_min + 1;
                        }
                        else if (_found_line_height > _line_height_max)
                        {
                            if (((_found_line_height / 2) == (_found_line_height div 2)) == ((_line_height_max / 2) == (_line_height_max div 2)))
                                _line_height = _line_height_max;
                            else
                                _line_height = _line_height_max - 1;
                        }
                        else
                        {
                            _line_height = _found_line_height;
                        }
                        
                        ds_grid_set(_line_grid, _line_count, (3 << 0), _line_word_end);
                        ds_grid_set(_line_grid, _line_count, (4 << 0), _word_x);
                        ds_grid_set(_line_grid, _line_count, (5 << 0), _line_height);
                        _line_count++;
                        
                        if ((_line_y + _line_height) > _line_max_y)
                            _line_max_y = _line_y + _line_height;
                        
                        _line_y += (_line_spacing_add + (_line_height * _line_spacing_multiply));
                        _line_word_start = _i + 1;
                        ds_grid_set(_line_grid, _line_count, (0 << 0), _indent_x);
                        ds_grid_set(_line_grid, _line_count, (2 << 0), _line_word_start);
                        ds_grid_set(_line_grid, _line_count, (6 << 0), _state_halign);
                        ds_grid_set(_line_grid, _line_count, (7 << 0), false);
                        ds_grid_set(_line_grid, _line_count, (8 << 0), false);
                        
                        if (1 && ds_grid_get(_word_grid, _line_word_start, (1 << 0)) < (6 << 0))
                        {
                            var _word_glyph_start = ds_grid_get(_word_grid, _line_word_start, (2 << 0));
                            var _word_glyph_end = ds_grid_get(_word_grid, _line_word_start, (3 << 0));
                            var _left_correction = ds_grid_get(_glyph_grid, _word_glyph_start, (8 << 0));
                            
                            if ((_left_correction > 0 && true) || (_left_correction < 0 && false))
                            {
                                ds_grid_set(_word_grid, _line_word_start, (4 << 0), ds_grid_get(_word_grid, _line_word_start, (4 << 0)) + _left_correction);
                                _word_width += _left_correction;
                            }
                        }
                        
                        _word_x = _indent_x;
                        ds_grid_set(_line_grid, _line_count - 1, (7 << 0), true);
                    }
                    else if (_glyph_start_ord == 0)
                    {
                        _line_word_end = _i;
                        var _found_line_height = ds_grid_get_max(_word_grid, _line_word_start, (5 << 0), _line_word_end, (5 << 0));
                        var _line_height;
                        
                        if (_found_line_height < _line_height_min)
                        {
                            if (((_found_line_height / 2) == (_found_line_height div 2)) == ((_line_height_min / 2) == (_line_height_min div 2)))
                                _line_height = _line_height_min;
                            else
                                _line_height = _line_height_min + 1;
                        }
                        else if (_found_line_height > _line_height_max)
                        {
                            if (((_found_line_height / 2) == (_found_line_height div 2)) == ((_line_height_max / 2) == (_line_height_max div 2)))
                                _line_height = _line_height_max;
                            else
                                _line_height = _line_height_max - 1;
                        }
                        else
                        {
                            _line_height = _found_line_height;
                        }
                        
                        ds_grid_set(_line_grid, _line_count, (3 << 0), _line_word_end);
                        ds_grid_set(_line_grid, _line_count, (4 << 0), _word_x);
                        ds_grid_set(_line_grid, _line_count, (5 << 0), _line_height);
                        _line_count++;
                        
                        if ((_line_y + _line_height) > _line_max_y)
                            _line_max_y = _line_y + _line_height;
                        
                        _line_y += (_line_spacing_add + (_line_height * _line_spacing_multiply));
                        _line_y = 0;
                        _line_word_start = _i + 1;
                        ds_grid_set(_line_grid, _line_count, (0 << 0), _indent_x);
                        ds_grid_set(_line_grid, _line_count, (2 << 0), _line_word_start);
                        ds_grid_set(_line_grid, _line_count, (6 << 0), _state_halign);
                        ds_grid_set(_line_grid, _line_count, (7 << 0), false);
                        ds_grid_set(_line_grid, _line_count, (8 << 0), false);
                        
                        if (1 && ds_grid_get(_word_grid, _line_word_start, (1 << 0)) < (6 << 0))
                        {
                            var _word_glyph_start = ds_grid_get(_word_grid, _line_word_start, (2 << 0));
                            var _word_glyph_end = ds_grid_get(_word_grid, _line_word_start, (3 << 0));
                            var _left_correction = ds_grid_get(_glyph_grid, _word_glyph_start, (8 << 0));
                            
                            if ((_left_correction > 0 && true) || (_left_correction < 0 && false))
                            {
                                ds_grid_set(_word_grid, _line_word_start, (4 << 0), ds_grid_get(_word_grid, _line_word_start, (4 << 0)) + _left_correction);
                                _word_width += _left_correction;
                            }
                        }
                        
                        _word_x = _indent_x;
                        ds_grid_set(_line_grid, _line_count - 1, (7 << 0), true);
                        
                        if (_i < (_word_count - 1))
                            ds_grid_set(_line_grid, _line_count, (8 << 0), true);
                    }
                }
                
                _word_x += _word_width;
                _i++;
            }
            
            var _line_word_end = _i - 1;
            
            if (_line_word_end >= _line_word_start)
            {
                var _found_line_height = ds_grid_get_max(_word_grid, _line_word_start, (5 << 0), _line_word_end, (5 << 0));
                var _line_height;
                
                if (_found_line_height < _line_height_min)
                {
                    if (((_found_line_height / 2) == (_found_line_height div 2)) == ((_line_height_min / 2) == (_line_height_min div 2)))
                        _line_height = _line_height_min;
                    else
                        _line_height = _line_height_min + 1;
                }
                else if (_found_line_height > _line_height_max)
                {
                    if (((_found_line_height / 2) == (_found_line_height div 2)) == ((_line_height_max / 2) == (_line_height_max div 2)))
                        _line_height = _line_height_max;
                    else
                        _line_height = _line_height_max - 1;
                }
                else
                {
                    _line_height = _found_line_height;
                }
                
                ds_grid_set(_line_grid, _line_count, (3 << 0), _line_word_end);
                ds_grid_set(_line_grid, _line_count, (4 << 0), _word_x);
                ds_grid_set(_line_grid, _line_count, (5 << 0), _line_height);
                _line_count++;
                
                if ((_line_y + _line_height) > _line_max_y)
                    _line_max_y = _line_y + _line_height;
                
                _line_y += (_line_spacing_add + (_line_height * _line_spacing_multiply));
                _line_y += _line_height;
            }
        }
        
        if (!_wrap_no_pages || false)
            break;
        
        _fit_to_box_iterations++;
        
        if (_line_max_y < _simulated_model_max_height && !_word_broken)
        {
            if (__fit_scale >= _wrap_max_scale)
                break;
            
            _lower_limit = __fit_scale;
        }
        else
        {
            _upper_limit = __fit_scale;
        }
        
        if (_fit_to_box_iterations >= 6)
        {
            if (__fit_scale == _lower_limit)
                break;
            
            __fit_scale = (_lower_limit == undefined) ? _upper_limit : _lower_limit;
        }
        else if (_lower_limit == undefined)
        {
            __fit_scale *= 0.5;
        }
        else if (_upper_limit == undefined)
        {
            __fit_scale = min(_wrap_max_scale, 2 * __fit_scale);
        }
        else
        {
            __fit_scale = _lower_limit + (0.5 * (_upper_limit - _lower_limit));
        }
    }
    
    ds_grid_set(_line_grid, _line_count - 1, (7 << 0), true);
    var _line = 0;
    
    repeat (_line_count)
    {
        var _line_word_start = ds_grid_get(_line_grid, _line, (2 << 0));
        
        if (ds_grid_get(_word_grid, _line_word_start, (1 << 0)) < (6 << 0))
        {
            var _word_glyph_start = ds_grid_get(_word_grid, _line_word_start, (2 << 0));
            var _word_glyph_end = ds_grid_get(_word_grid, _line_word_start, (3 << 0));
            var _left_correction = ds_grid_get(_glyph_grid, _word_glyph_start, (8 << 0));
            
            if ((_left_correction > 0 && true) || (_left_correction < 0 && false))
            {
                ds_grid_add_region(_glyph_grid, _word_glyph_start, (2 << 0), _word_glyph_end, (2 << 0), _left_correction);
                ds_grid_set(_word_grid, _i, (4 << 0), ds_grid_get(_word_grid, _i, (4 << 0)) + _left_correction);
            }
        }
        
        _line++;
    }
    
    if (true && _wrap_apply)
    {
        _line = 0;
        
        repeat (_line_count)
        {
            var _line_end_word = ds_grid_get(_line_grid, _line, (3 << 0));
            
            if (ds_grid_get(_word_grid, _line_end_word, (0 << 0)) == (0 << 0))
            {
                var _line_width = ds_grid_get(_line_grid, _line, (4 << 0));
                
                if (_line_width > _simulated_model_max_width)
                {
                    var _delta = _simulated_model_max_width - _line_width;
                    ds_grid_set(_line_grid, _line, (4 << 0), _simulated_model_max_width);
                    ds_grid_set(_word_grid, _line_end_word, (4 << 0), ds_grid_get(_word_grid, _line_end_word, (4 << 0)) + _delta);
                    var _word_start_glyph = ds_grid_get(_word_grid, _line_end_word, (2 << 0));
                    ds_grid_set(_glyph_grid, _word_start_glyph, (4 << 0), ds_grid_get(_glyph_grid, _word_start_glyph, (4 << 0)) + _delta);
                    ds_grid_set(_glyph_grid, _word_start_glyph, (7 << 0), ds_grid_get(_glyph_grid, _word_start_glyph, (7 << 0)) + _delta);
                }
            }
            
            _line++;
        }
    }
    
    __width = ds_grid_get_max(_line_grid, 0, (4 << 0), _line_count - 1, (4 << 0));
    
    with (_generator_state)
    {
        __word_count = _word_count;
        __line_count = _line_count;
    }
}
