function scribble_font_bake_outline_8dir_2px(arg0, arg1, arg2, arg3, arg4 = undefined)
{
    static _colors_struct = __scribble_config_colours();
    
    if (is_string(arg2))
    {
        var _found = variable_struct_get(_colors_struct, arg2);
        
        if (arg2 == undefined)
        {
            __scribble_error("Colour \"", arg2, "\" not recognised");
            exit;
        }
        
        arg2 = _found & 16777215;
    }
    
    shader_set(__shd_scribble_bake_outline_8dir_2px);
    shader_set_uniform_f(shader_get_uniform(shader_current(), "u_vOutlineColor"), color_get_red(arg2) / 255, color_get_green(arg2) / 255, color_get_blue(arg2) / 255);
    shader_reset();
    scribble_font_bake_shader(arg0, arg1, __shd_scribble_bake_outline_8dir_2px, 2, 2, 2, 2, 2, 2, arg3, arg4);
}
