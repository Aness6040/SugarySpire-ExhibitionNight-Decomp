function draw_text_scribble_ext(arg0, arg1, arg2, arg3, arg4 = undefined)
{
    static _scribble_state = __scribble_initialize().__state;
    
    var _font = draw_get_font();
    
    if (font_exists(_font))
    {
        _font = font_get_name(_font);
        
        if (!scribble_font_exists(_font))
            __scribble_error("Font \"", _font, "\" does not exist in Scribble\n(Fonts added with font_add() are not supported)");
    }
    else
    {
        _font = _scribble_state.__default_font;
    }
    
    var _element = scribble(arg2, "__draw_text_scribble__").align(draw_get_halign(), draw_get_valign()).starting_format(_font, 16777215).blend(draw_get_color(), draw_get_alpha()).wrap(arg3);
    
    if (arg4 != undefined)
        _element.reveal(arg4);
    
    _element.draw(arg0, arg1);
}
