function scribble_kerning_pair_set(arg0, arg1, arg2, arg3, arg4 = false)
{
    var _first_unicode = is_real(arg1) ? arg1 : ord(arg1);
    var _second_unicode = is_real(arg2) ? arg2 : ord(arg2);
    var _font_data = __scribble_get_font_data(arg0);
    var _kerning_map = _font_data.__kerning_map;
    var _lookup = ((_second_unicode & 65535) << 16) | (_first_unicode & 65535);
    var _new_value = arg4 ? ((ds_map_find_value(_kerning_map, _lookup) ?? 0) + arg3) : arg3;
    ds_map_set(_kerning_map, _lookup, _new_value);
    return _new_value;
}
