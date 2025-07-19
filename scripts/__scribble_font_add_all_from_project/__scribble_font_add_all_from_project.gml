function __scribble_font_add_all_from_project()
{
    var _fontArray = asset_get_ids(7);
    var _i = 0;
    
    repeat (array_length(_fontArray))
    {
        var _font = _fontArray[_i];
        
        if (!font_exists(_font))
            continue;
        
        var _skip = false;
        var _tagArray = asset_get_tags(_fontArray[_i], 7);
        var _j = 0;
        
        repeat (array_length(_tagArray))
        {
            if (string_lower(_tagArray[_j]) == "scribble skip")
            {
                _skip = true;
                break;
            }
            
            _j++;
        }
        
        var _name = font_get_name(_fontArray[_i]);
        
        if (string_copy(_name, 1, 9) == "__newfont")
            _skip = true;
        
        if (!_skip)
            __scribble_font_add_from_project(_fontArray[_i]);
        
        _i++;
    }
}
