__scribble_initialize();

function __scribble_initialize()
{
    static _system = undefined;
    
    if (_system != undefined)
        return _system;
    
    _system = {};
    
    with (_system)
    {
        __scribble_trace("Welcome to Scribble Deluxe by Juju Adams! This is version 9.3.5, 2024-12-13");
        __scribble_trace("Verbose mode is off, set SCRIBBLE_VERBOSE to <true> to see more information");
        
        if (!shader_is_compiled(__shd_scribble))
            __scribble_error("Shader failed to compile. Please check your version of GameMaker is compatible\nPlease report this error if it persists");
        
        if (!font_exists(asset_get_index("scribble_fallback_font")))
            __scribble_error("Fallback font was not found. This may indicate that unused assets have been stripped from the project\nPlease untick \"Automatically remove unused assets when compiling\" in Game Options");
        
        var _fontInfo = font_get_info(asset_get_index("scribble_fallback_font"));
        
        if (variable_struct_get(_fontInfo, "sdfEnabled") == undefined)
            __scribble_error("Versions of GameMaker without SDF font support are not supported (versions pre-2023.1, including LTS 2022)");
        
        try
        {
            time_source_start(time_source_create(0, 1, 1, function()
            {
                __scribble_tick();
            }, [], -1));
        }
        catch (_error)
        {
            __scribble_trace(_error);
            __scribble_error("Versions earlier than GameMaker 2023.1 are not supported");
        }
        
        __useHandleParse = false;
        
        try
        {
            handle_parse(string(__scribble_initialize));
            __useHandleParse = true;
            __scribble_trace("Using handle_parse() where possible");
        }
        catch (_error)
        {
            __scribble_trace("handle_parse() not available");
        }
        
        __gmMightRemoveUnusedAssets = true;
        __gmVersionMajor = 0;
        __gmVersionMinor = 0;
        __gmVersionPatch = 0;
        __gmVersionBuild = 0;
        
        try
        {
            var _workString = "2023.11.1.160";
            var _pos = string_pos(".", _workString);
            __gmVersionMajor = real(string_copy(_workString, 1, _pos - 1));
            _workString = string_delete(_workString, 1, _pos);
            _pos = string_pos(".", _workString);
            __gmVersionMinor = real(string_copy(_workString, 1, _pos - 1));
            _workString = string_delete(_workString, 1, _pos);
            _pos = string_pos(".", _workString);
            __gmVersionPatch = real(string_copy(_workString, 1, _pos - 1));
            __gmVersionBuild = real(string_delete(_workString, 1, _pos));
        }
        catch (_error)
        {
            __scribble_trace("Warning! Failed to obtain runtime version");
        }
        
        __gmMightRemoveUnusedAssets = __gmVersionMajor >= 2025 || (__gmVersionMajor == 2024 && (__gmVersionMinor >= 1100 || __gmVersionMinor == 11));
        __scribble_config_colours();
        __defaultPreprocessorFunc = __scribble_no_preprocessing;
        __font_data_map = ds_map_create();
        __buffer_a = buffer_create(1024, buffer_grow, 1);
        __buffer_b = buffer_create(1024, buffer_grow, 1);
        __anim_properties = array_create((21 << 0), undefined);
        __state = 
        {
            __frames: 0,
            __default_font: "scribble_fallback_font",
            __blink_on_duration: 50,
            __blink_off_duration: 50,
            __blink_time_offset: 0,
            __shader_anim_desync: false,
            __shader_anim_desync_to_default: false,
            __shader_anim_default: false,
            __shader_anim_disabled: false,
            __sdf_thickness_offset: 0,
            __markdown_styles_struct: {},
            __sprite_whitelist_map: ds_map_create(),
            __sound_whitelist_map: ds_map_create()
        };
        __cache_state = 
        {
            __mcache_dict: {},
            __mcache_name_array: [],
            __ecache_dict: {},
            __ecache_array: [],
            __ecache_weak_array: [],
            __ecache_name_array: [],
            __gc_vbuff_refs: [],
            __gc_vbuff_ids: [],
            __gc_grid_refs: [],
            __gc_grid_ids: []
        };
        __generator_state = new __scribble_class_generator_state();
        __glyph_data = __scribble_glyph_data_initialize();
        __krutidev_lookup_map = __scribble_krutidev_lookup_map_initialize();
        __krutidev_matra_lookup_map = __scribble_krutidev_matra_lookup_map_initialize();
        __external_sound_map = ds_map_create();
        __macros_map = ds_map_create();
        __typewriter_events_map = ds_map_create();
        ds_map_set(__typewriter_events_map, "pause", undefined);
        ds_map_set(__typewriter_events_map, "delay", undefined);
        ds_map_set(__typewriter_events_map, "sync", undefined);
        ds_map_set(__typewriter_events_map, "speed", undefined);
        ds_map_set(__typewriter_events_map, "/speed", undefined);
        __effects_map = ds_map_create();
        __effects_slash_map = ds_map_create();
        ds_map_set(__effects_map, "wave", 1);
        ds_map_set(__effects_map, "shake", 2);
        ds_map_set(__effects_map, "rainbow", 3);
        ds_map_set(__effects_map, "wobble", 4);
        ds_map_set(__effects_map, "pulse", 5);
        ds_map_set(__effects_map, "wheel", 6);
        ds_map_set(__effects_map, "cycle", 7);
        ds_map_set(__effects_map, "jitter", 8);
        ds_map_set(__effects_map, "blink", 9);
        ds_map_set(__effects_map, "slant", 10);
        ds_map_set(__effects_slash_map, "/wave", 1);
        ds_map_set(__effects_slash_map, "/shake", 2);
        ds_map_set(__effects_slash_map, "/rainbow", 3);
        ds_map_set(__effects_slash_map, "/wobble", 4);
        ds_map_set(__effects_slash_map, "/pulse", 5);
        ds_map_set(__effects_slash_map, "/wheel", 6);
        ds_map_set(__effects_slash_map, "/cycle", 7);
        ds_map_set(__effects_slash_map, "/jitter", 8);
        ds_map_set(__effects_slash_map, "/blink", 9);
        ds_map_set(__effects_slash_map, "/slant", 10);
        ds_map_set(__effects_map, "WAVE", 1);
        ds_map_set(__effects_map, "SHAKE", 2);
        ds_map_set(__effects_map, "RAINBOW", 3);
        ds_map_set(__effects_map, "WOBBLE", 4);
        ds_map_set(__effects_map, "PULSE", 5);
        ds_map_set(__effects_map, "WHEEL", 6);
        ds_map_set(__effects_map, "CYCLE", 7);
        ds_map_set(__effects_map, "JITTER", 8);
        ds_map_set(__effects_map, "BLINK", 9);
        ds_map_set(__effects_map, "SLANT", 10);
        ds_map_set(__effects_slash_map, "/WAVE", 1);
        ds_map_set(__effects_slash_map, "/SHAKE", 2);
        ds_map_set(__effects_slash_map, "/RAINBOW", 3);
        ds_map_set(__effects_slash_map, "/WOBBLE", 4);
        ds_map_set(__effects_slash_map, "/PULSE", 5);
        ds_map_set(__effects_slash_map, "/WHEEL", 6);
        ds_map_set(__effects_slash_map, "/CYCLE", 7);
        ds_map_set(__effects_slash_map, "/JITTER", 8);
        ds_map_set(__effects_slash_map, "/BLINK", 9);
        ds_map_set(__effects_slash_map, "/SLANT", 10);
    }
    
    scribble_anim_reset();
    __scribble_font_add_all_from_project();
    return _system;
}
