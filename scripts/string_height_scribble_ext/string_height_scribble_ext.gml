function string_height_scribble_ext(arg0, arg1)
{
    static _scribble_state = __scribble_initialize().__state;
    
    var _font = draw_get_font();
    _font = !font_exists(_font) ? _scribble_state.__default_font : font_get_name(_font);
    return scribble(arg0).starting_format(_font, 16777215).wrap(arg1).get_height();
}
