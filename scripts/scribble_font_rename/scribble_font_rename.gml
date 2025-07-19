function scribble_font_rename(arg0, arg1)
{
    static _font_data_map = __scribble_initialize().__font_data_map;
    
    var _data = __scribble_get_font_data(arg0);
    ds_map_set(_font_data_map, arg1, _data);
    ds_map_delete(_font_data_map, arg0);
    var _scribble_state = __scribble_initialize().__state;
    
    if (_scribble_state.__default_font == arg0)
        _scribble_state.__default_font = arg1;
}
