function scribble_font_delete(arg0)
{
    static _font_data_map = __scribble_initialize().__font_data_map;
    
    if (!ds_map_exists(_font_data_map, arg0))
        exit;
    
    ds_map_find_value(_font_data_map, arg0).__destroy();
    ds_map_delete(_font_data_map, arg0);
}
