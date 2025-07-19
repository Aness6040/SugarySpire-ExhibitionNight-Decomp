function scribble_external_sound_add(arg0, arg1)
{
    static _external_sound_map = __scribble_initialize().__external_sound_map;
    
    if (ds_map_exists(_external_sound_map, arg1))
        __scribble_error("External sound alias \"", arg1, "\" already exists");
    
    if (!audio_exists(arg0))
        __scribble_error("Audio asset ", arg0, " could not be found");
    
    ds_map_set(_external_sound_map, arg1, arg0);
}
