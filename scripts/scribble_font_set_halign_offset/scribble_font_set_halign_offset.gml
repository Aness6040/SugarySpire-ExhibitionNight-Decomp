function scribble_font_set_halign_offset(arg0, arg1, arg2)
{
    if (arg1 == "pin_left")
        arg1 = 3;
    
    if (arg1 == "pin_centre")
        arg1 = 4;
    
    if (arg1 == "pin_center")
        arg1 = 4;
    
    if (arg1 == "pin_right")
        arg1 = 5;
    
    if (arg1 == "fa_justify")
        arg1 = 6;
    
    __scribble_get_font_data(arg0).__halign_offset_array[arg1] = arg2;
}
