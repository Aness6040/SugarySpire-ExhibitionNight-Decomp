function __scribble_gen_5_finalize_bidi()
{
    static _generator_state = __scribble_initialize().__generator_state;
    
    if (!__has_r2l)
        exit;
    
    var _word_count, _word_grid, _overall_bidi;
    
    with (_generator_state)
    {
        _word_grid = __word_grid;
        _word_count = __word_count;
        _overall_bidi = __overall_bidi;
    }
    
    var _i = 0;
    
    repeat (_word_count)
    {
        var _bidi = ds_grid_get(_word_grid, _i, (0 << 0));
        
        if (_bidi <= (1 << 0))
        {
            var _prev_bidi = (_i > 0) ? ds_grid_get(_word_grid, _i - 1, (1 << 0)) : (1 << 0);
            var _next_bidi = (_i < (_word_count - 1)) ? ds_grid_get(_word_grid, _i + 1, (1 << 0)) : (1 << 0);
            
            if (_prev_bidi <= (1 << 0))
                _prev_bidi = _next_bidi;
            
            if (_next_bidi <= (1 << 0))
                _next_bidi = _prev_bidi;
            
            var _new_bidi = (_prev_bidi == _overall_bidi || _next_bidi == _overall_bidi) ? _overall_bidi : _prev_bidi;
            
            if (_new_bidi <= (1 << 0))
                _new_bidi = (4 << 0);
            
            ds_grid_set(_word_grid, _i, (1 << 0), _new_bidi);
            _bidi = _new_bidi;
        }
        
        _i++;
    }
}
