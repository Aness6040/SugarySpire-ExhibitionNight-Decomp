function scribble_font_bake_outline_and_shadow(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7 = undefined)
{
    var _outlineSize = 0;
    var _shader = __shd_scribble_bake_effect_no_outline;
    
    if (arg4 == (1 << 0))
    {
        _outlineSize = 1;
        _shader = __shd_scribble_bake_effect_4dir;
    }
    else if (arg4 == (2 << 0))
    {
        _outlineSize = 1;
        _shader = __shd_scribble_bake_effect_8dir;
    }
    else if (arg4 == (3 << 0))
    {
        _outlineSize = 2;
        _shader = __shd_scribble_bake_effect_8dir_2px;
    }
    
    shader_set(_shader);
    shader_set_uniform_f(shader_get_uniform(shader_current(), "u_vShadowDelta"), arg2, arg3);
    shader_reset();
    scribble_font_bake_shader(arg0, arg1, _shader, 2, _outlineSize + max(0, -arg2), _outlineSize + max(0, -arg3), _outlineSize + max(0, arg2), _outlineSize + max(0, arg3), arg5, arg6, arg7, true);
}
