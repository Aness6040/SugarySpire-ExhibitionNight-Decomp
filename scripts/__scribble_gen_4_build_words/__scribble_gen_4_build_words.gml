function __scribble_gen_4_build_words()
{
    static _generator_state = __scribble_initialize().__generator_state;
    
    var _element, _overall_bidi, _glyph_count, _glyph_grid, _word_grid;
    
    with (_generator_state)
    {
        _glyph_grid = __glyph_grid;
        _word_grid = __word_grid;
        _element = __element;
        _glyph_count = __glyph_count;
        _overall_bidi = __overall_bidi;
    }
    
    var _wrap_per_char = _element.__wrap_per_char;
    var _word_count = 0;
    var _word_width = 0;
    var _word_glyph_start = 0;
    var _word_glyph_end = undefined;
    var _word_bidi = _overall_bidi;
    var _glyph_prev_whitespace = _word_bidi == (0 << 0);
    
    if (_glyph_count > 0)
    {
        _word_bidi = ds_grid_get(_glyph_grid, 0, (1 << 0));
        ds_grid_set(_word_grid, _word_count, (2 << 0), _word_glyph_start);
        ds_grid_set(_word_grid, _word_count, (0 << 0), _word_bidi);
        ds_grid_set(_word_grid, _word_count, (1 << 0), (_word_bidi == (2 << 0) || _word_bidi == (3 << 0)) ? (4 << 0) : _word_bidi);
        
        if (_word_bidi < (6 << 0))
        {
            _word_width += ds_grid_get(_glyph_grid, 0, (7 << 0));
            ds_grid_set(_glyph_grid, 0, (17 << 0), 0);
        }
        else
        {
            _word_width -= ds_grid_get(_glyph_grid, 0, (7 << 0));
            ds_grid_set(_glyph_grid, 0, (2 << 0), ds_grid_get(_glyph_grid, 0, (2 << 0)) + _word_width);
        }
        
        var _i = 1;
        
        repeat (_glyph_count - 1)
        {
            var _glyph_bidi = ds_grid_get(_glyph_grid, _i, (1 << 0));
            
            switch (_glyph_bidi)
            {
                case (0 << 0):
                    if (_wrap_per_char || _glyph_prev_whitespace)
                    {
                        _word_glyph_end = _i - 1;
                        
                        if (_word_bidi == (7 << 0))
                        {
                            ds_grid_add_region(_glyph_grid, _word_glyph_start, (2 << 0), _word_glyph_end, (2 << 0), abs(_word_width));
                            ds_grid_set_region(_glyph_grid, _word_glyph_start, (17 << 0), _word_glyph_end, (17 << 0), _word_glyph_start);
                            ds_grid_set(_word_grid, _word_count, (1 << 0), (6 << 0));
                        }
                        else
                        {
                            if (_word_bidi == (5 << 0))
                                ds_grid_set_region(_glyph_grid, _word_glyph_start, (17 << 0), _word_glyph_end, (17 << 0), _word_glyph_start);
                            
                            if (_word_bidi == (6 << 0))
                                ds_grid_add_region(_glyph_grid, _word_glyph_start, (2 << 0), _word_glyph_end, (2 << 0), abs(_word_width));
                        }
                        
                        ds_grid_set(_word_grid, _word_count, (3 << 0), _word_glyph_end);
                        ds_grid_set(_word_grid, _word_count, (4 << 0), abs(_word_width));
                        ds_grid_set(_word_grid, _word_count, (5 << 0), ds_grid_get_max(_glyph_grid, _word_glyph_start, (6 << 0), _word_glyph_end, (6 << 0)));
                        _word_count++;
                        _word_width = 0;
                        _word_glyph_start = _i;
                        _word_bidi = _glyph_bidi;
                        ds_grid_set(_word_grid, _word_count, (2 << 0), _word_glyph_start);
                        ds_grid_set(_word_grid, _word_count, (0 << 0), _word_bidi);
                        ds_grid_set(_word_grid, _word_count, (1 << 0), (_word_bidi == (2 << 0) || _word_bidi == (3 << 0)) ? (4 << 0) : _word_bidi);
                    }
                    else
                    {
                        _glyph_prev_whitespace = true;
                        
                        if (true || (_word_bidi != _overall_bidi && _glyph_bidi != _word_bidi))
                        {
                            _word_glyph_end = _i - 1;
                            
                            if (_word_bidi == (7 << 0))
                            {
                                ds_grid_add_region(_glyph_grid, _word_glyph_start, (2 << 0), _word_glyph_end, (2 << 0), abs(_word_width));
                                ds_grid_set_region(_glyph_grid, _word_glyph_start, (17 << 0), _word_glyph_end, (17 << 0), _word_glyph_start);
                                ds_grid_set(_word_grid, _word_count, (1 << 0), (6 << 0));
                            }
                            else
                            {
                                if (_word_bidi == (5 << 0))
                                    ds_grid_set_region(_glyph_grid, _word_glyph_start, (17 << 0), _word_glyph_end, (17 << 0), _word_glyph_start);
                                
                                if (_word_bidi == (6 << 0))
                                    ds_grid_add_region(_glyph_grid, _word_glyph_start, (2 << 0), _word_glyph_end, (2 << 0), abs(_word_width));
                            }
                            
                            ds_grid_set(_word_grid, _word_count, (3 << 0), _word_glyph_end);
                            ds_grid_set(_word_grid, _word_count, (4 << 0), abs(_word_width));
                            ds_grid_set(_word_grid, _word_count, (5 << 0), ds_grid_get_max(_glyph_grid, _word_glyph_start, (6 << 0), _word_glyph_end, (6 << 0)));
                            _word_count++;
                            _word_width = 0;
                            _word_glyph_start = _i;
                            _word_bidi = _glyph_bidi;
                            ds_grid_set(_word_grid, _word_count, (2 << 0), _word_glyph_start);
                            ds_grid_set(_word_grid, _word_count, (0 << 0), _word_bidi);
                            ds_grid_set(_word_grid, _word_count, (1 << 0), (_word_bidi == (2 << 0) || _word_bidi == (3 << 0)) ? (4 << 0) : _word_bidi);
                        }
                    }
                    
                    break;
                
                case (1 << 0):
                    if (_word_bidi != (0 << 0) && _word_bidi != (2 << 0))
                    {
                        _glyph_bidi = _word_bidi;
                    }
                    else if (_glyph_prev_whitespace)
                    {
                        _word_glyph_end = _i - 1;
                        
                        if (_word_bidi == (7 << 0))
                        {
                            ds_grid_add_region(_glyph_grid, _word_glyph_start, (2 << 0), _word_glyph_end, (2 << 0), abs(_word_width));
                            ds_grid_set_region(_glyph_grid, _word_glyph_start, (17 << 0), _word_glyph_end, (17 << 0), _word_glyph_start);
                            ds_grid_set(_word_grid, _word_count, (1 << 0), (6 << 0));
                        }
                        else
                        {
                            if (_word_bidi == (5 << 0))
                                ds_grid_set_region(_glyph_grid, _word_glyph_start, (17 << 0), _word_glyph_end, (17 << 0), _word_glyph_start);
                            
                            if (_word_bidi == (6 << 0))
                                ds_grid_add_region(_glyph_grid, _word_glyph_start, (2 << 0), _word_glyph_end, (2 << 0), abs(_word_width));
                        }
                        
                        ds_grid_set(_word_grid, _word_count, (3 << 0), _word_glyph_end);
                        ds_grid_set(_word_grid, _word_count, (4 << 0), abs(_word_width));
                        ds_grid_set(_word_grid, _word_count, (5 << 0), ds_grid_get_max(_glyph_grid, _word_glyph_start, (6 << 0), _word_glyph_end, (6 << 0)));
                        _word_count++;
                        _word_width = 0;
                        _word_glyph_start = _i;
                        _word_bidi = _glyph_bidi;
                        ds_grid_set(_word_grid, _word_count, (2 << 0), _word_glyph_start);
                        ds_grid_set(_word_grid, _word_count, (0 << 0), _word_bidi);
                        ds_grid_set(_word_grid, _word_count, (1 << 0), (_word_bidi == (2 << 0) || _word_bidi == (3 << 0)) ? (4 << 0) : _word_bidi);
                        _glyph_prev_whitespace = false;
                    }
                    else if (_glyph_bidi != _word_bidi)
                    {
                        _word_glyph_end = _i - 1;
                        
                        if (_word_bidi == (7 << 0))
                        {
                            ds_grid_add_region(_glyph_grid, _word_glyph_start, (2 << 0), _word_glyph_end, (2 << 0), abs(_word_width));
                            ds_grid_set_region(_glyph_grid, _word_glyph_start, (17 << 0), _word_glyph_end, (17 << 0), _word_glyph_start);
                            ds_grid_set(_word_grid, _word_count, (1 << 0), (6 << 0));
                        }
                        else
                        {
                            if (_word_bidi == (5 << 0))
                                ds_grid_set_region(_glyph_grid, _word_glyph_start, (17 << 0), _word_glyph_end, (17 << 0), _word_glyph_start);
                            
                            if (_word_bidi == (6 << 0))
                                ds_grid_add_region(_glyph_grid, _word_glyph_start, (2 << 0), _word_glyph_end, (2 << 0), abs(_word_width));
                        }
                        
                        ds_grid_set(_word_grid, _word_count, (3 << 0), _word_glyph_end);
                        ds_grid_set(_word_grid, _word_count, (4 << 0), abs(_word_width));
                        ds_grid_set(_word_grid, _word_count, (5 << 0), ds_grid_get_max(_glyph_grid, _word_glyph_start, (6 << 0), _word_glyph_end, (6 << 0)));
                        _word_count++;
                        _word_width = 0;
                        _word_glyph_start = _i;
                        _word_bidi = _glyph_bidi;
                        ds_grid_set(_word_grid, _word_count, (2 << 0), _word_glyph_start);
                        ds_grid_set(_word_grid, _word_count, (0 << 0), _word_bidi);
                        ds_grid_set(_word_grid, _word_count, (1 << 0), (_word_bidi == (2 << 0) || _word_bidi == (3 << 0)) ? (4 << 0) : _word_bidi);
                    }
                    
                    break;
                
                case (2 << 0):
                    _word_glyph_end = _i - 1;
                    
                    if (_word_bidi == (7 << 0))
                    {
                        ds_grid_add_region(_glyph_grid, _word_glyph_start, (2 << 0), _word_glyph_end, (2 << 0), abs(_word_width));
                        ds_grid_set_region(_glyph_grid, _word_glyph_start, (17 << 0), _word_glyph_end, (17 << 0), _word_glyph_start);
                        ds_grid_set(_word_grid, _word_count, (1 << 0), (6 << 0));
                    }
                    else
                    {
                        if (_word_bidi == (5 << 0))
                            ds_grid_set_region(_glyph_grid, _word_glyph_start, (17 << 0), _word_glyph_end, (17 << 0), _word_glyph_start);
                        
                        if (_word_bidi == (6 << 0))
                            ds_grid_add_region(_glyph_grid, _word_glyph_start, (2 << 0), _word_glyph_end, (2 << 0), abs(_word_width));
                    }
                    
                    ds_grid_set(_word_grid, _word_count, (3 << 0), _word_glyph_end);
                    ds_grid_set(_word_grid, _word_count, (4 << 0), abs(_word_width));
                    ds_grid_set(_word_grid, _word_count, (5 << 0), ds_grid_get_max(_glyph_grid, _word_glyph_start, (6 << 0), _word_glyph_end, (6 << 0)));
                    _word_count++;
                    _word_width = 0;
                    _word_glyph_start = _i;
                    _word_bidi = _glyph_bidi;
                    ds_grid_set(_word_grid, _word_count, (2 << 0), _word_glyph_start);
                    ds_grid_set(_word_grid, _word_count, (0 << 0), _word_bidi);
                    ds_grid_set(_word_grid, _word_count, (1 << 0), (_word_bidi == (2 << 0) || _word_bidi == (3 << 0)) ? (4 << 0) : _word_bidi);
                    _glyph_prev_whitespace = false;
                    break;
                
                case (3 << 0):
                    if (_glyph_prev_whitespace)
                    {
                        _word_glyph_end = _i - 1;
                        
                        if (_word_bidi == (7 << 0))
                        {
                            ds_grid_add_region(_glyph_grid, _word_glyph_start, (2 << 0), _word_glyph_end, (2 << 0), abs(_word_width));
                            ds_grid_set_region(_glyph_grid, _word_glyph_start, (17 << 0), _word_glyph_end, (17 << 0), _word_glyph_start);
                            ds_grid_set(_word_grid, _word_count, (1 << 0), (6 << 0));
                        }
                        else
                        {
                            if (_word_bidi == (5 << 0))
                                ds_grid_set_region(_glyph_grid, _word_glyph_start, (17 << 0), _word_glyph_end, (17 << 0), _word_glyph_start);
                            
                            if (_word_bidi == (6 << 0))
                                ds_grid_add_region(_glyph_grid, _word_glyph_start, (2 << 0), _word_glyph_end, (2 << 0), abs(_word_width));
                        }
                        
                        ds_grid_set(_word_grid, _word_count, (3 << 0), _word_glyph_end);
                        ds_grid_set(_word_grid, _word_count, (4 << 0), abs(_word_width));
                        ds_grid_set(_word_grid, _word_count, (5 << 0), ds_grid_get_max(_glyph_grid, _word_glyph_start, (6 << 0), _word_glyph_end, (6 << 0)));
                        _word_count++;
                        _word_width = 0;
                        _word_glyph_start = _i;
                        _word_bidi = _glyph_bidi;
                        ds_grid_set(_word_grid, _word_count, (2 << 0), _word_glyph_start);
                        ds_grid_set(_word_grid, _word_count, (0 << 0), _word_bidi);
                        ds_grid_set(_word_grid, _word_count, (1 << 0), (_word_bidi == (2 << 0) || _word_bidi == (3 << 0)) ? (4 << 0) : _word_bidi);
                        _glyph_prev_whitespace = false;
                    }
                    else if (_word_bidi == (1 << 0))
                    {
                        _word_bidi = _glyph_bidi;
                        ds_grid_set(_word_grid, _word_count, (0 << 0), _glyph_bidi);
                        ds_grid_set(_word_grid, _word_count, (1 << 0), _glyph_bidi);
                    }
                    else
                    {
                        _word_glyph_end = _i - 1;
                        
                        if (_word_bidi == (7 << 0))
                        {
                            ds_grid_add_region(_glyph_grid, _word_glyph_start, (2 << 0), _word_glyph_end, (2 << 0), abs(_word_width));
                            ds_grid_set_region(_glyph_grid, _word_glyph_start, (17 << 0), _word_glyph_end, (17 << 0), _word_glyph_start);
                            ds_grid_set(_word_grid, _word_count, (1 << 0), (6 << 0));
                        }
                        else
                        {
                            if (_word_bidi == (5 << 0))
                                ds_grid_set_region(_glyph_grid, _word_glyph_start, (17 << 0), _word_glyph_end, (17 << 0), _word_glyph_start);
                            
                            if (_word_bidi == (6 << 0))
                                ds_grid_add_region(_glyph_grid, _word_glyph_start, (2 << 0), _word_glyph_end, (2 << 0), abs(_word_width));
                        }
                        
                        ds_grid_set(_word_grid, _word_count, (3 << 0), _word_glyph_end);
                        ds_grid_set(_word_grid, _word_count, (4 << 0), abs(_word_width));
                        ds_grid_set(_word_grid, _word_count, (5 << 0), ds_grid_get_max(_glyph_grid, _word_glyph_start, (6 << 0), _word_glyph_end, (6 << 0)));
                        _word_count++;
                        _word_width = 0;
                        _word_glyph_start = _i;
                        _word_bidi = _glyph_bidi;
                        ds_grid_set(_word_grid, _word_count, (2 << 0), _word_glyph_start);
                        ds_grid_set(_word_grid, _word_count, (0 << 0), _word_bidi);
                        ds_grid_set(_word_grid, _word_count, (1 << 0), (_word_bidi == (2 << 0) || _word_bidi == (3 << 0)) ? (4 << 0) : _word_bidi);
                    }
                    
                    break;
                
                case (4 << 0):
                case (5 << 0):
                case (6 << 0):
                case (7 << 0):
                    if (_glyph_prev_whitespace)
                    {
                        _word_glyph_end = _i - 1;
                        
                        if (_word_bidi == (7 << 0))
                        {
                            ds_grid_add_region(_glyph_grid, _word_glyph_start, (2 << 0), _word_glyph_end, (2 << 0), abs(_word_width));
                            ds_grid_set_region(_glyph_grid, _word_glyph_start, (17 << 0), _word_glyph_end, (17 << 0), _word_glyph_start);
                            ds_grid_set(_word_grid, _word_count, (1 << 0), (6 << 0));
                        }
                        else
                        {
                            if (_word_bidi == (5 << 0))
                                ds_grid_set_region(_glyph_grid, _word_glyph_start, (17 << 0), _word_glyph_end, (17 << 0), _word_glyph_start);
                            
                            if (_word_bidi == (6 << 0))
                                ds_grid_add_region(_glyph_grid, _word_glyph_start, (2 << 0), _word_glyph_end, (2 << 0), abs(_word_width));
                        }
                        
                        ds_grid_set(_word_grid, _word_count, (3 << 0), _word_glyph_end);
                        ds_grid_set(_word_grid, _word_count, (4 << 0), abs(_word_width));
                        ds_grid_set(_word_grid, _word_count, (5 << 0), ds_grid_get_max(_glyph_grid, _word_glyph_start, (6 << 0), _word_glyph_end, (6 << 0)));
                        _word_count++;
                        _word_width = 0;
                        _word_glyph_start = _i;
                        _word_bidi = _glyph_bidi;
                        ds_grid_set(_word_grid, _word_count, (2 << 0), _word_glyph_start);
                        ds_grid_set(_word_grid, _word_count, (0 << 0), _word_bidi);
                        ds_grid_set(_word_grid, _word_count, (1 << 0), (_word_bidi == (2 << 0) || _word_bidi == (3 << 0)) ? (4 << 0) : _word_bidi);
                        _glyph_prev_whitespace = false;
                    }
                    else if (_word_bidi == (1 << 0))
                    {
                        _word_bidi = _glyph_bidi;
                        ds_grid_set(_word_grid, _word_count, (0 << 0), _glyph_bidi);
                        ds_grid_set(_word_grid, _word_count, (1 << 0), _glyph_bidi);
                        
                        if (_word_bidi >= (6 << 0))
                        {
                            _word_width = 0;
                            var _j = _word_glyph_start;
                            
                            repeat (_i - _j)
                            {
                                ds_grid_set(_glyph_grid, _j, (2 << 0), ds_grid_get(_glyph_grid, _j, (2 << 0)) + _word_width);
                                _word_width -= ds_grid_get(_glyph_grid, _j, (7 << 0));
                                ds_grid_set(_glyph_grid, _j, (2 << 0), ds_grid_get(_glyph_grid, _j, (2 << 0)) + _word_width);
                                _j++;
                            }
                        }
                    }
                    else if (_wrap_per_char || _glyph_bidi != _word_bidi)
                    {
                        _word_glyph_end = _i - 1;
                        
                        if (_word_bidi == (7 << 0))
                        {
                            ds_grid_add_region(_glyph_grid, _word_glyph_start, (2 << 0), _word_glyph_end, (2 << 0), abs(_word_width));
                            ds_grid_set_region(_glyph_grid, _word_glyph_start, (17 << 0), _word_glyph_end, (17 << 0), _word_glyph_start);
                            ds_grid_set(_word_grid, _word_count, (1 << 0), (6 << 0));
                        }
                        else
                        {
                            if (_word_bidi == (5 << 0))
                                ds_grid_set_region(_glyph_grid, _word_glyph_start, (17 << 0), _word_glyph_end, (17 << 0), _word_glyph_start);
                            
                            if (_word_bidi == (6 << 0))
                                ds_grid_add_region(_glyph_grid, _word_glyph_start, (2 << 0), _word_glyph_end, (2 << 0), abs(_word_width));
                        }
                        
                        ds_grid_set(_word_grid, _word_count, (3 << 0), _word_glyph_end);
                        ds_grid_set(_word_grid, _word_count, (4 << 0), abs(_word_width));
                        ds_grid_set(_word_grid, _word_count, (5 << 0), ds_grid_get_max(_glyph_grid, _word_glyph_start, (6 << 0), _word_glyph_end, (6 << 0)));
                        _word_count++;
                        _word_width = 0;
                        _word_glyph_start = _i;
                        _word_bidi = _glyph_bidi;
                        ds_grid_set(_word_grid, _word_count, (2 << 0), _word_glyph_start);
                        ds_grid_set(_word_grid, _word_count, (0 << 0), _word_bidi);
                        ds_grid_set(_word_grid, _word_count, (1 << 0), (_word_bidi == (2 << 0) || _word_bidi == (3 << 0)) ? (4 << 0) : _word_bidi);
                    }
                    
                    break;
            }
            
            if (_word_bidi < (6 << 0))
            {
                ds_grid_set(_glyph_grid, _i, (2 << 0), ds_grid_get(_glyph_grid, _i, (2 << 0)) + _word_width);
                _word_width += ds_grid_get(_glyph_grid, _i, (7 << 0));
                ds_grid_set(_glyph_grid, _i, (17 << 0), _i);
            }
            else
            {
                _word_width -= ds_grid_get(_glyph_grid, _i, (7 << 0));
                ds_grid_set(_glyph_grid, _i, (2 << 0), ds_grid_get(_glyph_grid, _i, (2 << 0)) + _word_width);
                
                if (_word_bidi == (6 << 0))
                    ds_grid_set(_glyph_grid, _i, (17 << 0), _i);
            }
            
            _i++;
        }
        
        _word_glyph_end = _i - 1;
        
        if (_word_bidi == (7 << 0))
        {
            ds_grid_add_region(_glyph_grid, _word_glyph_start, (2 << 0), _word_glyph_end, (2 << 0), abs(_word_width));
            ds_grid_set_region(_glyph_grid, _word_glyph_start, (17 << 0), _word_glyph_end, (17 << 0), _word_glyph_start);
            ds_grid_set(_word_grid, _word_count, (1 << 0), (6 << 0));
        }
        else
        {
            if (_word_bidi == (5 << 0))
                ds_grid_set_region(_glyph_grid, _word_glyph_start, (17 << 0), _word_glyph_end, (17 << 0), _word_glyph_start);
            
            if (_word_bidi == (6 << 0))
                ds_grid_add_region(_glyph_grid, _word_glyph_start, (2 << 0), _word_glyph_end, (2 << 0), abs(_word_width));
        }
        
        ds_grid_set(_word_grid, _word_count, (3 << 0), _word_glyph_end);
        ds_grid_set(_word_grid, _word_count, (4 << 0), abs(_word_width));
        ds_grid_set(_word_grid, _word_count, (5 << 0), ds_grid_get_max(_glyph_grid, _word_glyph_start, (6 << 0), _word_glyph_end, (6 << 0)));
        _word_count++;
    }
    
    ds_grid_set(_word_grid, _word_count, (2 << 0), _word_glyph_end + 1);
    ds_grid_set(_word_grid, _word_count, (3 << 0), _word_glyph_end + 1);
    ds_grid_set(_word_grid, _word_count, (4 << 0), 0);
    ds_grid_set(_word_grid, _word_count, (5 << 0), 0);
    ds_grid_set(_word_grid, _word_count, (0 << 0), (1 << 0));
    ds_grid_set(_word_grid, _word_count, (1 << 0), (1 << 0));
    
    with (_generator_state)
        __word_count = _word_count;
}
