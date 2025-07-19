function __scribble_gen_3_devanagari()
{
    static _krutidev_lookup_map = __scribble_initialize().__krutidev_lookup_map;
    static _krutidev_matra_lookup_map = __scribble_initialize().__krutidev_matra_lookup_map;
    static _generator_state = __scribble_initialize().__generator_state;
    
    if (!__has_devanagari)
        exit;
    
    var _glyph_count, _glyph_grid, _temp_grid, _control_grid;
    
    with (_generator_state)
    {
        _glyph_grid = __glyph_grid;
        _control_grid = __control_grid;
        _temp_grid = __temp2_grid;
        _glyph_count = _generator_state.__glyph_count;
    }
    
    _glyph_count--;
    ds_grid_set(_glyph_grid, _glyph_count, (0 << 0), 65535);
    ds_grid_set(_glyph_grid, _glyph_count + 1, (0 << 0), 65535);
    ds_grid_set(_glyph_grid, _glyph_count + 2, (0 << 0), 65535);
    ds_grid_set(_glyph_grid, _glyph_count + 3, (0 << 0), 65535);
    var _in_single_quote = false;
    var _in_double_quote = false;
    var _i = 0;
    
    repeat (_glyph_count)
    {
        switch (ds_grid_get(_glyph_grid, _i, (0 << 0)))
        {
            case 39:
                _in_single_quote = !_in_single_quote;
                ds_grid_set(_glyph_grid, _i, (0 << 0), 65535 + (_in_single_quote ? 94 : 42));
                break;
            
            case 34:
                _in_double_quote = !_in_double_quote;
                ds_grid_set(_glyph_grid, _i, (0 << 0), 65535 + (_in_double_quote ? 223 : 222));
                break;
            
            case 2345:
                ds_grid_set(_glyph_grid, _i, (0 << 0), 2344);
                ds_grid_set_grid_region(_temp_grid, _glyph_grid, _i + 1, 0, _glyph_count + 3, (21 << 0), 0, 0);
                ds_grid_set_grid_region(_glyph_grid, _temp_grid, 0, 0, (_glyph_count + 3) - _i, (21 << 0), _i + 2, 0);
                _i++;
                _glyph_count++;
                ds_grid_set(_glyph_grid, _i, (0 << 0), 2364);
                ds_grid_set(_glyph_grid, _i, (16 << 0), ds_grid_get(_glyph_grid, _i, (16 << 0)));
                break;
            
            case 2353:
                ds_grid_set(_glyph_grid, _i, (0 << 0), 2352);
                ds_grid_set_grid_region(_temp_grid, _glyph_grid, _i + 1, 0, _glyph_count + 3, (21 << 0), 0, 0);
                ds_grid_set_grid_region(_glyph_grid, _temp_grid, 0, 0, (_glyph_count + 3) - _i, (21 << 0), _i + 2, 0);
                _i++;
                _glyph_count++;
                ds_grid_set(_glyph_grid, _i, (0 << 0), 2364);
                ds_grid_set(_glyph_grid, _i, (16 << 0), ds_grid_get(_glyph_grid, _i, (16 << 0)));
                break;
            
            case 2392:
                ds_grid_set(_glyph_grid, _i, (0 << 0), 2325);
                ds_grid_set_grid_region(_temp_grid, _glyph_grid, _i + 1, 0, _glyph_count + 3, (21 << 0), 0, 0);
                ds_grid_set_grid_region(_glyph_grid, _temp_grid, 0, 0, (_glyph_count + 3) - _i, (21 << 0), _i + 2, 0);
                _i++;
                _glyph_count++;
                ds_grid_set(_glyph_grid, _i, (0 << 0), 2364);
                ds_grid_set(_glyph_grid, _i, (16 << 0), ds_grid_get(_glyph_grid, _i, (16 << 0)));
                break;
            
            case 2393:
                ds_grid_set(_glyph_grid, _i, (0 << 0), 2326);
                ds_grid_set_grid_region(_temp_grid, _glyph_grid, _i + 1, 0, _glyph_count + 3, (21 << 0), 0, 0);
                ds_grid_set_grid_region(_glyph_grid, _temp_grid, 0, 0, (_glyph_count + 3) - _i, (21 << 0), _i + 2, 0);
                _i++;
                _glyph_count++;
                ds_grid_set(_glyph_grid, _i, (0 << 0), 2364);
                ds_grid_set(_glyph_grid, _i, (16 << 0), ds_grid_get(_glyph_grid, _i, (16 << 0)));
                break;
            
            case 2394:
                ds_grid_set(_glyph_grid, _i, (0 << 0), 2327);
                ds_grid_set_grid_region(_temp_grid, _glyph_grid, _i + 1, 0, _glyph_count + 3, (21 << 0), 0, 0);
                ds_grid_set_grid_region(_glyph_grid, _temp_grid, 0, 0, (_glyph_count + 3) - _i, (21 << 0), _i + 2, 0);
                _i++;
                _glyph_count++;
                ds_grid_set(_glyph_grid, _i, (0 << 0), 2364);
                ds_grid_set(_glyph_grid, _i, (16 << 0), ds_grid_get(_glyph_grid, _i, (16 << 0)));
                break;
            
            case 2395:
                ds_grid_set(_glyph_grid, _i, (0 << 0), 2332);
                ds_grid_set_grid_region(_temp_grid, _glyph_grid, _i + 1, 0, _glyph_count + 3, (21 << 0), 0, 0);
                ds_grid_set_grid_region(_glyph_grid, _temp_grid, 0, 0, (_glyph_count + 3) - _i, (21 << 0), _i + 2, 0);
                _i++;
                _glyph_count++;
                ds_grid_set(_glyph_grid, _i, (0 << 0), 2364);
                ds_grid_set(_glyph_grid, _i, (16 << 0), ds_grid_get(_glyph_grid, _i, (16 << 0)));
                break;
            
            case 2396:
                ds_grid_set(_glyph_grid, _i, (0 << 0), 2337);
                ds_grid_set_grid_region(_temp_grid, _glyph_grid, _i + 1, 0, _glyph_count + 3, (21 << 0), 0, 0);
                ds_grid_set_grid_region(_glyph_grid, _temp_grid, 0, 0, (_glyph_count + 3) - _i, (21 << 0), _i + 2, 0);
                _i++;
                _glyph_count++;
                ds_grid_set(_glyph_grid, _i, (0 << 0), 2364);
                ds_grid_set(_glyph_grid, _i, (16 << 0), ds_grid_get(_glyph_grid, _i, (16 << 0)));
                break;
            
            case 2397:
                ds_grid_set(_glyph_grid, _i, (0 << 0), 2338);
                ds_grid_set_grid_region(_temp_grid, _glyph_grid, _i + 1, 0, _glyph_count + 3, (21 << 0), 0, 0);
                ds_grid_set_grid_region(_glyph_grid, _temp_grid, 0, 0, (_glyph_count + 3) - _i, (21 << 0), _i + 2, 0);
                _i++;
                _glyph_count++;
                ds_grid_set(_glyph_grid, _i, (0 << 0), 2364);
                ds_grid_set(_glyph_grid, _i, (16 << 0), ds_grid_get(_glyph_grid, _i, (16 << 0)));
                break;
            
            case 2398:
                ds_grid_set(_glyph_grid, _i, (0 << 0), 2347);
                ds_grid_set_grid_region(_temp_grid, _glyph_grid, _i + 1, 0, _glyph_count + 3, (21 << 0), 0, 0);
                ds_grid_set_grid_region(_glyph_grid, _temp_grid, 0, 0, (_glyph_count + 3) - _i, (21 << 0), _i + 2, 0);
                _i++;
                _glyph_count++;
                ds_grid_set(_glyph_grid, _i, (0 << 0), 2364);
                ds_grid_set(_glyph_grid, _i, (16 << 0), ds_grid_get(_glyph_grid, _i, (16 << 0)));
                break;
            
            case 2399:
                ds_grid_set(_glyph_grid, _i, (0 << 0), 2351);
                ds_grid_set_grid_region(_temp_grid, _glyph_grid, _i + 1, 0, _glyph_count + 3, (21 << 0), 0, 0);
                ds_grid_set_grid_region(_glyph_grid, _temp_grid, 0, 0, (_glyph_count + 3) - _i, (21 << 0), _i + 2, 0);
                _i++;
                _glyph_count++;
                ds_grid_set(_glyph_grid, _i, (0 << 0), 2364);
                ds_grid_set(_glyph_grid, _i, (16 << 0), ds_grid_get(_glyph_grid, _i, (16 << 0)));
                break;
        }
        
        _i++;
    }
    
    _i = 1;
    
    repeat (_glyph_count - 1)
    {
        var _char = ds_grid_get(_glyph_grid, _i, (0 << 0));
        
        if (_char == 2367)
        {
            var _j = _i - 1;
            
            while (_j >= 0)
            {
                var _prev_char = ds_grid_get(_glyph_grid, _j, (0 << 0));
                
                if (_prev_char == 2381)
                    _j -= 2;
                else if (_prev_char == 2364)
                    _j -= 1;
                else
                    break;
            }
            
            ds_grid_set_grid_region(_temp_grid, _glyph_grid, _j, 0, _i - 1, (21 << 0), 0, 0);
            ds_grid_set_grid_region(_glyph_grid, _temp_grid, 0, 0, _i - 1 - _j, (21 << 0), _j + 1, 0);
            ds_grid_set(_glyph_grid, _j, (0 << 0), 65637);
            ds_grid_set(_glyph_grid, _j, (16 << 0), ds_grid_get(_glyph_grid, _j + 1, (16 << 0)));
        }
        
        _i++;
    }
    
    for (_i = 0; _i < _glyph_count; _i++)
    {
        if (ds_grid_get(_glyph_grid, _i, (0 << 0)) == 2352 && ds_grid_get(_glyph_grid, _i + 1, (0 << 0)) == 2381)
        {
            var _newPosition = _i + 2;
            var _charRight = ds_grid_get(_glyph_grid, _newPosition + 1, (0 << 0));
            
            while (ds_map_exists(_krutidev_matra_lookup_map, _charRight))
            {
                _newPosition++;
                _charRight = ds_grid_get(_glyph_grid, _newPosition + 1, (0 << 0));
            }
            
            var _copyCount = (1 + _newPosition) - (_i + 2);
            ds_grid_set_grid_region(_temp_grid, _glyph_grid, _i + 2, 0, (_glyph_count - 1) + 4, (21 << 0), _i + 2, 0);
            ds_grid_set_grid_region(_glyph_grid, _temp_grid, _i + 2, 0, _newPosition, (21 << 0), _i, 0);
            ds_grid_set(_glyph_grid, _i + _copyCount, (0 << 0), 65625);
            ds_grid_set(_glyph_grid, _i + _copyCount, (16 << 0), ds_grid_get(_glyph_grid, _copyCount - 1, (16 << 0)));
            ds_grid_set_grid_region(_glyph_grid, _temp_grid, _newPosition + 1, 0, _glyph_count + 3, (21 << 0), _i + _copyCount + 1, 0);
            _glyph_count--;
        }
    }
    
    var _oneChar = 0;
    var _twoChar = (ds_grid_get(_glyph_grid, 0, (0 << 0)) & 65535) << 16;
    var _threeChar = _twoChar | ((ds_grid_get(_glyph_grid, 1, (0 << 0)) & 65535) << 32);
    var _fourChar = _threeChar | ((ds_grid_get(_glyph_grid, 2, (0 << 0)) & 65535) << 48);
    
    for (_i = 0; _i < _glyph_count; _i++)
    {
        _oneChar = _twoChar >> 16;
        _twoChar = _threeChar >> 16;
        _threeChar = (_fourChar & 9223372036854775807) >> 16;
        _fourChar = _threeChar | ((ds_grid_get(_glyph_grid, _i + 3, (0 << 0)) & 65535) << 48);
        var _foundLength = 4;
        var _replacementArray = ds_map_find_value(_krutidev_lookup_map, _fourChar);
        
        if (_replacementArray == undefined)
        {
            _foundLength = 3;
            _replacementArray = ds_map_find_value(_krutidev_lookup_map, _threeChar);
            
            if (_replacementArray == undefined)
            {
                _foundLength = 2;
                _replacementArray = ds_map_find_value(_krutidev_lookup_map, _twoChar);
                
                if (_replacementArray == undefined)
                {
                    _foundLength = 1;
                    _replacementArray = ds_map_find_value(_krutidev_lookup_map, _oneChar);
                }
            }
        }
        
        if (_replacementArray != undefined)
        {
            var _replacementLength = array_length(_replacementArray);
            
            if (_foundLength == 1 && _replacementLength == 1)
            {
                ds_grid_set(_glyph_grid, _i, (0 << 0), 65535 + _replacementArray[0]);
            }
            else
            {
                var _copyCount = min(_foundLength, _replacementLength);
                var _j = 0;
                
                repeat (_copyCount)
                {
                    ds_grid_set(_glyph_grid, _i + _j, (0 << 0), 65535 + _replacementArray[_j]);
                    _j++;
                }
                
                if (_foundLength > _replacementLength)
                {
                    var _copyStart = (_i + _copyCount + _foundLength) - _replacementLength;
                    var _copyLength = _glyph_count - _copyStart;
                    ds_grid_set_grid_region(_temp_grid, _glyph_grid, _copyStart, 0, _glyph_count, (21 << 0), 0, 0);
                    ds_grid_set_grid_region(_glyph_grid, _temp_grid, 0, 0, _copyLength, (21 << 0), _i + _copyCount, 0);
                }
                else if (_foundLength < _replacementLength)
                {
                    var _insertPos = _i + _copyCount;
                    ds_grid_set_grid_region(_temp_grid, _glyph_grid, _insertPos, 0, _glyph_count, (21 << 0), 0, 0);
                    ds_grid_set_grid_region(_glyph_grid, _temp_grid, 0, 0, _glyph_count - _insertPos, (21 << 0), _insertPos + (_replacementLength - _foundLength), 0);
                    
                    if ((_replacementLength - _foundLength) == 1)
                    {
                        ds_grid_set(_glyph_grid, _insertPos, (0 << 0), 65535 + _replacementArray[_replacementLength - 1]);
                        ds_grid_set(_glyph_grid, _insertPos, (16 << 0), ds_grid_get(_glyph_grid, _insertPos - 1, (16 << 0)));
                    }
                    else if ((_replacementLength - _foundLength) == 2)
                    {
                        ds_grid_set(_glyph_grid, _insertPos, (0 << 0), 65535 + _replacementArray[_replacementLength - 2]);
                        ds_grid_set(_glyph_grid, _insertPos, (16 << 0), ds_grid_get(_glyph_grid, _insertPos - 1, (16 << 0)));
                        ds_grid_set(_glyph_grid, _insertPos + 1, (0 << 0), 65535 + _replacementArray[_replacementLength - 1]);
                        ds_grid_set(_glyph_grid, _insertPos + 1, (16 << 0), ds_grid_get(_glyph_grid, _insertPos - 1, (16 << 0)));
                    }
                    else
                    {
                        __scribble_error("Devanagari substring insertion length > 2. Please report this error");
                    }
                }
                
                _i += (_replacementLength - 1);
                _glyph_count += (_replacementLength - _foundLength);
                _twoChar = (ds_grid_get(_glyph_grid, _i + 1, (0 << 0)) & 65535) << 16;
                _threeChar = _twoChar | ((ds_grid_get(_glyph_grid, _i + 2, (0 << 0)) & 65535) << 32);
                _fourChar = _threeChar | ((ds_grid_get(_glyph_grid, _i + 3, (0 << 0)) & 65535) << 48);
            }
        }
    }
    
    var _control_index = 0;
    var _font_name = undefined;
    var _font_glyphs_map = undefined;
    var _font_glyph_data_grid = undefined;
    _i = 0;
    
    repeat (_glyph_count)
    {
        var _control_delta = ds_grid_get(_glyph_grid, _i, (16 << 0)) - _control_index;
        
        repeat (_control_delta)
        {
            if (ds_grid_get(_control_grid, _control_index, (0 << 0)) == (6 << 0))
            {
                _font_name = ds_grid_get(_control_grid, _control_index, (1 << 0));
                var _font_data = __scribble_get_font_data(_font_name);
                _font_glyph_data_grid = _font_data.__glyph_data_grid;
                _font_glyphs_map = _font_data.__glyphs_map;
            }
            
            _control_index++;
        }
        
        var _found_glyph = ds_grid_get(_glyph_grid, _i, (0 << 0));
        
        if (_found_glyph == 65535)
        {
            __scribble_trace("Warning! Devanagari parser extended beyond the end of the available characters");
        }
        else if (_found_glyph >= 32)
        {
            var _glyph_write = _found_glyph;
            var _data_index = ds_map_find_value(_font_glyphs_map, _glyph_write);
            
            if (_data_index == undefined)
            {
                __scribble_trace("Couldn't find glyph data for character code " + string(_found_glyph) + " (" + chr(_found_glyph) + ") in font \"" + string(_font_name) + "\"");
                _glyph_write = 65533;
                _data_index = ds_map_find_value(_font_glyphs_map, _glyph_write);
            }
            
            if (_data_index == undefined)
                __scribble_trace("Couldn't find glyph data for character code " + string(_glyph_write) + " (" + chr(_glyph_write) + ") in font \"" + string(_font_name) + "\"");
            else if (ds_grid_get(_font_glyph_data_grid, _data_index, (2 << 0)) != (0 << 0))
                ds_grid_set_grid_region(_glyph_grid, _font_glyph_data_grid, _data_index, (1 << 0), _data_index, (16 << 0), _i, (0 << 0));
        }
        
        _i++;
    }
    
    ds_grid_set(_glyph_grid, _glyph_count, (0 << 0), 0);
    ds_grid_set(_glyph_grid, _glyph_count, (1 << 0), (2 << 0));
    ds_grid_set(_glyph_grid, _glyph_count, (2 << 0), 0);
    ds_grid_set(_glyph_grid, _glyph_count, (3 << 0), 0);
    ds_grid_set(_glyph_grid, _glyph_count, (4 << 0), 0);
    ds_grid_set(_glyph_grid, _glyph_count, (5 << 0), 0);
    ds_grid_set(_glyph_grid, _glyph_count, (6 << 0), 0);
    ds_grid_set(_glyph_grid, _glyph_count, (7 << 0), 0);
    ds_grid_set(_glyph_grid, _glyph_count, (16 << 0), (_glyph_count > 0) ? ds_grid_get(_glyph_grid, _glyph_count - 1, (16 << 0)) : 0);
    _generator_state.__glyph_count = _glyph_count + 1;
}

function __scribble_debug_krutidev(arg0)
{
    var _string = "";
    
    for (var _i = 0; true; _i++)
    {
        var _unicode = ds_grid_get(arg0, _i, (0 << 0));
        
        if (_unicode >= 65535)
            _unicode -= 65535;
        
        if (_unicode <= 0)
            break;
        
        _string += chr(_unicode);
    }
    
    return _string;
}
