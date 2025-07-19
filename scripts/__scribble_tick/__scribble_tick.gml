function __scribble_tick()
{
    static _scribble_state = __scribble_initialize().__state;
    static _cache_state = __scribble_initialize().__cache_state;
    static _ecache_list_index = 0;
    static _ecache_weak_index = 0;
    static _ecache_name_index = 0;
    static _ecache_array = _cache_state.__ecache_array;
    static _ecache_dict = _cache_state.__ecache_dict;
    static _ecache_weak_array = _cache_state.__ecache_weak_array;
    static _ecache_name_array = _cache_state.__ecache_name_array;
    static _mcache_name_index = 0;
    static _mcache_dict = _cache_state.__mcache_dict;
    static _mcache_name_array = _cache_state.__mcache_name_array;
    static _vbuff_index = 0;
    static _gc_vbuff_refs = _cache_state.__gc_vbuff_refs;
    static _gc_vbuff_ids = _cache_state.__gc_vbuff_ids;
    static _grid_index = 0;
    static _gc_grid_refs = _cache_state.__gc_grid_refs;
    static _gc_grid_ids = _cache_state.__gc_grid_ids;
    static _os_is_paused = undefined;
    static _scribble_state = __scribble_initialize().__state;
    
    _scribble_state.__frames++;
    var _frames = _scribble_state.__frames;
    
    if (os_is_paused() != _os_is_paused)
    {
        _os_is_paused = os_is_paused();
        
        with (_scribble_state)
        {
            __shader_anim_desync = true;
            __shader_anim_desync_to_default = true;
        }
    }
    
    var _size = array_length(_ecache_array);
    _ecache_list_index = min(_ecache_list_index, _size);
    
    repeat (max(3, ceil(sqrt(_size))))
    {
        _ecache_list_index--;
        
        if (_ecache_list_index < 0)
        {
            _ecache_list_index += array_length(_ecache_array);
            
            if (_ecache_list_index < 0)
            {
                _ecache_list_index = 0;
                break;
            }
        }
        
        var _element = _ecache_array[_ecache_list_index];
        
        if ((_element.__last_drawn + 10) < _frames)
        {
            array_delete(_ecache_array, _ecache_list_index, 1);
            variable_struct_remove(_ecache_dict, _element.__cache_name);
        }
    }
    
    if (array_length(_ecache_weak_array) > 0)
    {
        _ecache_weak_index = (_ecache_weak_index + 1) % array_length(_ecache_weak_array);
        
        if (!weak_ref_alive(_ecache_weak_array[_ecache_weak_index]))
            array_delete(_ecache_weak_array, _ecache_weak_index, 1);
    }
    
    _size = array_length(_ecache_name_array);
    _ecache_name_index = min(_ecache_name_index, _size);
    
    repeat (max(3, ceil(sqrt(_size))))
    {
        _ecache_name_index--;
        
        if (_ecache_name_index < 0)
        {
            _ecache_name_index += array_length(_ecache_name_array);
            
            if (_ecache_name_index < 0)
            {
                _ecache_name_index = 0;
                break;
            }
        }
        
        var _name = _ecache_name_array[_ecache_name_index];
        var _weak = variable_struct_get(_ecache_dict, _name);
        
        if (_weak == undefined || !weak_ref_alive(_weak))
        {
            variable_struct_remove(_ecache_dict, _name);
            array_delete(_ecache_name_array, _ecache_name_index, 1);
        }
    }
    
    _size = array_length(_mcache_name_array);
    _mcache_name_index = min(_mcache_name_index, _size);
    
    repeat (max(3, ceil(sqrt(_size))))
    {
        _mcache_name_index--;
        
        if (_mcache_name_index < 0)
        {
            _mcache_name_index += array_length(_mcache_name_array);
            
            if (_mcache_name_index < 0)
            {
                _mcache_name_index = 0;
                break;
            }
        }
        
        var _name = _mcache_name_array[_mcache_name_index];
        var _weak = variable_struct_get(_mcache_dict, _name);
        
        if (_weak == undefined || !weak_ref_alive(_weak))
        {
            variable_struct_remove(_mcache_dict, _name);
            array_delete(_mcache_name_array, _mcache_name_index, 1);
        }
    }
    
    _size = array_length(_gc_vbuff_refs);
    _vbuff_index = min(_vbuff_index, _size);
    
    repeat (max(3, ceil(sqrt(_size))))
    {
        _vbuff_index--;
        
        if (_vbuff_index < 0)
        {
            _vbuff_index += array_length(_gc_vbuff_refs);
            
            if (_vbuff_index < 0)
            {
                _vbuff_index = 0;
                break;
            }
        }
        
        var _weak = _gc_vbuff_refs[_vbuff_index];
        
        if (!weak_ref_alive(_weak))
        {
            vertex_delete_buffer(_gc_vbuff_ids[_vbuff_index]);
            array_delete(_gc_vbuff_refs, _vbuff_index, 1);
            array_delete(_gc_vbuff_ids, _vbuff_index, 1);
        }
    }
    
    _size = array_length(_gc_grid_refs);
    _grid_index = min(_grid_index, _size);
    
    repeat (max(3, ceil(sqrt(_size))))
    {
        _grid_index--;
        
        if (_grid_index < 0)
        {
            _grid_index += array_length(_gc_grid_refs);
            
            if (_grid_index < 0)
            {
                _grid_index = 0;
                break;
            }
        }
        
        var _weak = _gc_grid_refs[_grid_index];
        
        if (!weak_ref_alive(_weak))
        {
            ds_grid_destroy(_gc_grid_ids[_grid_index]);
            array_delete(_gc_grid_refs, _grid_index, 1);
            array_delete(_gc_grid_ids, _grid_index, 1);
        }
    }
}
