function scribble_flush_everything()
{
    with (__scribble_initialize().__cache_state)
    {
        var _i = 0;
        
        repeat (array_length(__ecache_array))
        {
            __ecache_array[_i].__flushed = true;
            _i++;
        }
        
        _i = 0;
        
        repeat (array_length(__gc_vbuff_ids))
        {
            vertex_delete_buffer(__gc_vbuff_ids[_i]);
            _i++;
        }
        
        array_resize(__gc_vbuff_refs, 0);
        array_resize(__gc_vbuff_ids, 0);
        _i = 0;
        
        repeat (array_length(__gc_grid_ids))
        {
            ds_grid_destroy(__gc_grid_ids[_i]);
            _i++;
        }
        
        array_resize(__gc_grid_refs, 0);
        array_resize(__gc_grid_ids, 0);
        var _names_array = variable_struct_get_names(__ecache_dict);
        _i = 0;
        
        repeat (array_length(_names_array))
        {
            variable_struct_remove(__ecache_dict, _names_array[_i]);
            _i++;
        }
        
        array_resize(__ecache_name_array, 0);
        array_resize(__ecache_array, 0);
        _names_array = variable_struct_get_names(__mcache_dict);
        _i = 0;
        
        repeat (array_length(_names_array))
        {
            variable_struct_remove(__mcache_dict, _names_array[_i]);
            _i++;
        }
        
        array_resize(__mcache_name_array, 0);
    }
}
