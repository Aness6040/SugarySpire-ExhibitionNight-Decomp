global.__display_gui_args = [0, 0, 0, 0, 0];

function __display_set_gui_size_hook(arg0, arg1)
{
    display_set_gui_size(arg0, arg1);
    global.__display_gui_args[0] = -1;
    global.__display_gui_args[1] = arg0;
    global.__display_gui_args[2] = arg1;
    global.__display_gui_args[3] = 0;
    global.__display_gui_args[4] = 0;
}

function __display_set_gui_maximize_hook()
{
    global.__display_gui_args[0] = argument_count;
    var i;
    
    for (i = 0; i < argument_count; i++)
        global.__display_gui_args[i + 1] = argument[i];
    
    while (i < 4)
    {
        global.__display_gui_args[i + 1] = 0;
        i++;
    }
}

function __display_gui_restore()
{
    var _args = global.__display_gui_args;
    
    switch (_args[0])
    {
        case -1:
            display_set_gui_size(_args[1], _args[2]);
            break;
        
        case 0:
            display_set_gui_maximise();
            break;
        
        case 1:
            display_set_gui_maximise(_args[1]);
            break;
        
        case 2:
            display_set_gui_maximise(_args[1], _args[2]);
            break;
        
        case 3:
            display_set_gui_maximise(_args[1], _args[2], _args[3]);
            break;
        
        case 4:
            display_set_gui_maximise(_args[1], _args[2], _args[3], _args[4]);
            break;
    }
}
