function scribble_markdown_set_styles(arg0, arg1 = false)
{
    static _scribble_state = __scribble_initialize().__state;
    
    if (!arg1)
    {
        if (!is_struct(arg0))
            __scribble_error("Input was not a struct (datatype=", typeof(arg0), ")");
        
        var _root_names_array = variable_struct_get_names(arg0);
        var _i = 0;
        
        repeat (array_length(_root_names_array))
        {
            var _root_name = _root_names_array[_i];
            
            if (_root_name != "body" && _root_name != "header1" && _root_name != "header2" && _root_name != "header3" && _root_name != "bold" && _root_name != "italic" && _root_name != "bold_italic" && _root_name != "quote" && _root_name != "bullet_sprite" && _root_name != "link")
            {
                __scribble_error("Root struct name \"", _root_name, "\" not permitted");
            }
            else
            {
                var _value = variable_struct_get(arg0, _root_name);
                
                if (_root_name == "bullet_sprite")
                {
                    if (is_undefined(_value))
                    {
                    }
                    else if (is_numeric(_value))
                    {
                        if (!sprite_exists(_value))
                        {
                            __scribble_error("<bullet_sprite> sprite", _value, " does not exist");
                            return false;
                        }
                    }
                    else if (is_string(_value))
                    {
                        if (asset_get_type(_value) != 1)
                        {
                            __scribble_error("<bullet_sprite> sprite \"", _value, "\" is not a sprite");
                            return false;
                        }
                    }
                    else
                    {
                        __scribble_error("<bullet_sprite> is the wrong datatype. It must be a sprite index or the name of a sprite (datatype=", typeof(_value), ")");
                        return false;
                    }
                }
                else
                {
                    var _child_struct = _value;
                    
                    if (is_undefined(_child_struct))
                    {
                    }
                    else if (!is_struct(_child_struct))
                    {
                        __scribble_error("Child struct <", _root_name, "> must be a struct (datatype=", typeof(_value), ")");
                        return false;
                    }
                    else
                    {
                        var _child_names_array = variable_struct_get_names(_child_struct);
                        var _j = 0;
                        
                        repeat (array_length(_child_names_array))
                        {
                            var _child_name = _child_names_array[_j];
                            var _child_value = variable_struct_get(_child_struct, _child_name);
                            
                            if (_child_name == "font")
                            {
                                if (is_undefined(_child_value))
                                {
                                }
                                else if (is_string(_child_value))
                                {
                                    if (!scribble_font_exists(_child_value))
                                    {
                                        __scribble_error("\"font\" property \"", _child_value, "\" is not a font (style=\"", _root_name, "\")");
                                        return false;
                                    }
                                }
                                else
                                {
                                    __scribble_error("Child struct property \"font\" must be the name of a font as a string (datatype=", typeof(_child_value), ", style=\"", _root_name, "\")");
                                    return false;
                                }
                            }
                            else if (_child_name == "color" || _child_name == "scale")
                            {
                                if (!is_numeric(_child_value) && !is_undefined(_child_value))
                                {
                                    __scribble_error("Child struct property \"", _child_name, "\" must be a number (datatype=", typeof(_child_value), ", style=\"", _root_name, "\")");
                                    return false;
                                }
                            }
                            else if (_child_name == "bold" || _child_name == "italic")
                            {
                                if (!is_bool(_child_value) && !is_undefined(_child_value))
                                {
                                    __scribble_error("Child struct property \"bold\" must be <true> or <false> (datatype=", typeof(_child_value), ", style=\"", _root_name, "\")");
                                    return false;
                                }
                            }
                            else if (_child_name == "prefix" || _child_name == "suffix")
                            {
                                if (!is_string(_child_value) && !is_undefined(_child_value))
                                {
                                    __scribble_error("Child struct property \"", _child_name, "\" must be a string (datatype=", typeof(_child_value), ", style=\"", _root_name, "\")");
                                    return false;
                                }
                            }
                            else
                            {
                                __scribble_error("Child struct property <", _root_name, "> not permitted (style=", _root_name, ")");
                                return false;
                            }
                            
                            _j++;
                        }
                    }
                }
            }
            
            _i++;
        }
    }
    
    _scribble_state.__markdown_styles_struct = arg0;
    return true;
}
