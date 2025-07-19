function __scribble_class_typist(arg0) constructor
{
    static __scribble_state = __scribble_initialize().__state;
    
    static reset = function()
    {
        __last_page = 0;
        __last_character = 0;
        __last_audio_character = 0;
        __last_tick_frame = -infinity;
        __window_index = 0;
        __window_array = array_create(6, -__smoothness);
        __window_array[0] = 0;
        __paused = false;
        __delay_paused = false;
        __delay_end = -1;
        __inline_speed = 1;
        __event_stack = [];
        __skip = false;
        __drawn_since_skip = false;
        return self;
    };
    
    static in = function(arg0, arg1)
    {
        var _old_in = __in;
        __in = true;
        __backwards = false;
        __speed = arg0;
        __smoothness = arg1;
        __skip = false;
        
        if (_old_in == undefined || !_old_in)
            reset();
        
        return self;
    };
    
    static out = function(arg0, arg1, arg2 = false)
    {
        var _old_in = __in;
        __in = false;
        __backwards = arg2;
        __speed = arg0;
        __smoothness = arg1;
        __skip = false;
        
        if (_old_in == undefined || _old_in)
            reset();
        
        return self;
    };
    
    static skip = function(arg0 = true)
    {
        __skip = arg0;
        __skip_paused = true;
        __drawn_since_skip = false;
        __delay_end = -infinity;
        return self;
    };
    
    static skip_to_pause = function(arg0 = true)
    {
        __skip = arg0;
        __skip_paused = false;
        __drawn_since_skip = false;
        __delay_end = -infinity;
        return self;
    };
    
    static ignore_delay = function(arg0 = true)
    {
        __ignore_delay = arg0;
        return self;
    };
    
    static sound = function(arg0, arg1, arg2, arg3, arg4 = 1)
    {
        var _sound_array = arg0;
        
        if (!is_array(_sound_array))
            _sound_array = [_sound_array];
        
        __sound_array = _sound_array;
        __sound_overlap = arg1;
        __sound_pitch_min = arg2;
        __sound_pitch_max = arg3;
        __sound_gain = arg4;
        __sound_per_char = false;
        return self;
    };
    
    static sound_per_char = function(arg0, arg1, arg2, arg3, arg4 = 1)
    {
        var _sound_array = arg0;
        
        if (!is_array(_sound_array))
            _sound_array = [_sound_array];
        
        __sound_array = _sound_array;
        __sound_pitch_min = arg1;
        __sound_pitch_max = arg2;
        __sound_gain = arg4;
        __sound_per_char = true;
        
        if (is_string(arg3))
        {
            __scribble_error("SCRIBBLE_ALLOW_GLYPH_DATA_GETTER must be set to <true> to use sound-per-character exceptions");
            __sound_per_char_exception = true;
            __sound_per_char_exception_dict = {};
            var _i = 1;
            
            repeat (string_length(arg3))
            {
                variable_struct_set(__sound_per_char_exception_dict, ord(string_char_at(arg3, _i)), true);
                _i++;
            }
        }
        else
        {
            __sound_per_char_exception = false;
        }
        
        return self;
    };
    
    static function_per_char = function(arg0)
    {
        __function_per_char = arg0;
        return self;
    };
    
    static function_on_complete = function(arg0)
    {
        __function_on_complete = arg0;
        return self;
    };
    
    static execution_scope = function(arg0)
    {
        __function_scope = arg0;
        return self;
    };
    
    static pause = function()
    {
        __paused = true;
        return self;
    };
    
    static unpause = function()
    {
        if (__paused)
        {
            var _head_pos = __window_array[__window_index];
            __window_index = (__window_index + 2) % 6;
            __window_array[__window_index] = _head_pos;
            __window_array[__window_index + 1] = _head_pos - __smoothness;
        }
        
        __skip = false;
        __paused = false;
        return self;
    };
    
    static ease = function(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
    {
        __ease_method = arg0;
        __ease_dx = arg1;
        __ease_dy = arg2;
        __ease_xscale = arg3;
        __ease_yscale = arg4;
        __ease_rotation = arg5;
        __ease_alpha_duration = arg6;
        return self;
    };
    
    static character_delay_add = function(arg0, arg1)
    {
        __scribble_error("SCRIBBLE_ALLOW_GLYPH_DATA_GETTER must be set to <true> to use per-character delay");
        var _char_1 = arg0;
        var _char_2 = 0;
        
        if (is_string(arg0))
        {
            _char_1 = ord(string_char_at(arg0, 1));
            
            if (string_length(arg0) >= 2)
                _char_2 = ord(string_char_at(arg0, 2));
        }
        
        var _code = _char_1 | (_char_2 << 32);
        __character_delay = true;
        variable_struct_set(__character_delay_dict, _code, arg1);
        return self;
    };
    
    static character_delay_remove = function(arg0)
    {
        var _char_1 = arg0;
        var _char_2 = 0;
        
        if (is_string(arg0))
        {
            _char_1 = ord(string_char_at(arg0, 1));
            
            if (string_length(arg0) >= 2)
                _char_2 = ord(string_char_at(arg0, 2));
        }
        
        var _code = _char_1 | (_char_2 << 32);
        variable_struct_remove(__character_delay_dict, _code);
        return self;
    };
    
    static character_delay_clear = function()
    {
        __character_delay = false;
        __character_delay_dict = {};
        return self;
    };
    
    static get_skip = function()
    {
        return __skip;
    };
    
    static get_ignore_delay = function()
    {
        return __ignore_delay;
    };
    
    static get_state = function()
    {
        if (__last_element == undefined || __last_page == undefined || __last_character == undefined)
            return 0;
        
        if (__in == undefined)
            return 1;
        
        if (!weak_ref_alive(__last_element))
            return 2;
        
        var _model = __last_element.ref.__get_model(true);
        
        if (!is_struct(_model))
            return 2;
        
        var _pages_array = _model.__get_page_array();
        
        if (array_length(_pages_array) <= __last_page)
            return 1;
        
        var _page_data = _pages_array[__last_page];
        var _max = __per_line ? _page_data.__line_count : _page_data.__character_count;
        
        if (_max <= 0)
            return 1;
        
        var _t = clamp((__window_array[__window_index] + max(0, (__window_array[__window_index + 1] + __smoothness) - _max)) / (_max + __smoothness), 0, 1);
        
        if (__in)
        {
            if (__delay_paused || array_length(__event_stack) > 0)
                return min(1 - (2 * math_get_epsilon()), _t);
            else
                return _t;
        }
        else
        {
            return _t + 1;
        }
    };
    
    static get_delay_paused = function()
    {
        return __delay_paused;
    };
    
    static get_paused = function()
    {
        return __paused;
    };
    
    static get_position = function()
    {
        if (__in == undefined)
            return 0;
        
        return __window_array[__window_index];
    };
    
    static get_text_element = function()
    {
        return weak_ref_alive(__last_element) ? __last_element.ref : undefined;
    };
    
    static get_execution_scope = function()
    {
        return __function_scope;
    };
    
    static sync_to_sound = function(arg0)
    {
        if (arg0 < 400000)
            __scribble_error("Cannot synchronise to a sound asset. Please provide a sound instance (as returned by audio_play_sound())");
        
        if (!audio_is_playing(arg0))
            __scribble_error("Sound instance ", arg0, " is not playing\nCannot sync to a stopped sound instance");
        
        __paused = false;
        __delay_paused = false;
        __sync_reset();
        __sync_started = true;
        __sync_instance = arg0;
        return self;
    };
    
    static __sync_reset = function()
    {
        __sync_started = false;
        __sync_instance = undefined;
        __sync_paused = false;
        __sync_pause_end = infinity;
    };
    
    static set_sound_tag_gain = function(arg0)
    {
        __sound_tag_gain = arg0;
        return self;
    };
    
    static get_sound_tag_gain = function()
    {
        return __sound_tag_gain;
    };
    
    static __associate = function(arg0)
    {
        var _carry_skip = __skip && (__last_element == undefined || !__drawn_since_skip);
        
        if (__last_element == undefined || !weak_ref_alive(__last_element) || __last_element.ref != arg0)
        {
            reset();
            __last_element = weak_ref_create(arg0);
        }
        else if (!weak_ref_alive(__last_element))
        {
            __scribble_trace("Warning! Typist's target text element has been garbage collected");
            reset();
            __last_element = weak_ref_create(arg0);
        }
        else if (__last_element.ref.__page != __last_page)
        {
            reset();
        }
        
        __last_page = __last_element.ref.__page;
        
        if (_carry_skip)
        {
            __skip = true;
            __drawn_since_skip = false;
        }
        
        return self;
    };
    
    static __process_event_stack = function(arg0, arg1, arg2)
    {
        static _typewriter_events_map = __scribble_initialize().__typewriter_events_map;
        
        repeat (array_length(__event_stack))
        {
            var _event_struct = __event_stack[0];
            array_delete(__event_stack, 0, 1);
            var _event_position = __per_line ? _event_struct.line_index : _event_struct.character_index;
            var _event_name = _event_struct.name;
            var _event_data = _event_struct.data;
            
            switch (_event_name)
            {
                case "pause":
                    if ((!__skip && !__sync_started) || !__skip_paused)
                    {
                        if (true && __last_character >= arg0 && array_length(__event_stack) <= 0)
                        {
                            __scribble_trace("Warning! Ignoring [pause] command before the end of a page");
                        }
                        else
                        {
                            __paused = true;
                            return false;
                        }
                    }
                    
                    break;
                
                case "delay":
                    if (!__skip && !__ignore_delay && !__sync_started)
                    {
                        var _duration = (array_length(_event_data) >= 1) ? real(_event_data[0]) : 450;
                        __delay_paused = true;
                        __delay_end = current_time + _duration;
                        return false;
                    }
                    
                    break;
                
                case "sync":
                    if (!__skip && __sync_started)
                    {
                        __sync_paused = true;
                        __sync_pause_end = real(_event_data[0]);
                        return false;
                    }
                    
                    break;
                
                case "speed":
                    if (array_length(_event_data) >= 1)
                        __inline_speed = real(_event_data[0]);
                    
                    break;
                
                case "/speed":
                    __inline_speed = 1;
                    break;
                
                case "__scribble_audio_playback__":
                    if (array_length(_event_data) >= 1)
                    {
                        var _asset = _event_data[0];
                        
                        if (is_string(_asset))
                            _asset = asset_get_index(_asset);
                        
                        __scribble_play_sound(_asset, __sound_tag_gain, 1);
                    }
                    
                    break;
                
                case "__scribble_typist_sound__":
                    sound(__scribble_parse_sound_array_string(_event_data[1]), real(_event_data[2]), real(_event_data[3]), real(_event_data[4]));
                    break;
                
                case "__scribble_typist_sound_per_char__":
                    switch (array_length(_event_data))
                    {
                        case 4:
                            sound_per_char(__scribble_parse_sound_array_string(_event_data[1]), real(_event_data[2]), real(_event_data[3]));
                            break;
                        
                        case 5:
                            sound_per_char(__scribble_parse_sound_array_string(_event_data[1]), real(_event_data[2]), real(_event_data[3]), _event_data[4]);
                            break;
                    }
                    
                    break;
                
                default:
                    var _function = ds_map_find_value(_typewriter_events_map, _event_name);
                    
                    if (is_method(_function))
                    {
                        with (arg2)
                            _function(arg1, _event_data, _event_position);
                    }
                    else if (_function != undefined && script_exists(_function))
                    {
                        with (arg2)
                            script_execute(_function, arg1, _event_data, _event_position);
                    }
                    else
                    {
                        __scribble_trace("Warning! Event [", _event_name, "] not recognised");
                    }
                    
                    if (__paused)
                        return false;
                    
                    break;
            }
        }
        
        return true;
    };
    
    static __play_sound = function(arg0, arg1)
    {
        static _external_sound_map = __scribble_initialize().__external_sound_map;
        
        var _sound_array = __sound_array;
        
        if (is_array(_sound_array) && array_length(_sound_array) > 0)
        {
            var _play_sound = false;
            
            if (__sound_per_char)
            {
                if (floor(arg0 + 0.0001) > floor(__last_audio_character))
                {
                    if (!__sound_per_char_exception)
                        _play_sound = true;
                    else if (!variable_struct_exists(__sound_per_char_exception_dict, arg1))
                        _play_sound = true;
                }
            }
            else if (current_time >= __sound_finish_time)
            {
                _play_sound = true;
            }
            
            if (_play_sound)
            {
                __last_audio_character = arg0;
                var _audio_asset = _sound_array[floor(__scribble_random() * array_length(_sound_array))];
                
                if (is_string(_audio_asset))
                    _audio_asset = ds_map_find_value(_external_sound_map, _audio_asset);
                
                if (_audio_asset != undefined)
                {
                    var _inst = __scribble_play_sound(_audio_asset, __sound_gain, lerp(__sound_pitch_min, __sound_pitch_max, __scribble_random()));
                    __sound_finish_time = (current_time + (1000 * audio_sound_length(_inst))) - __sound_overlap;
                }
            }
        }
    };
    
    static __execute_function_per_character = function(arg0)
    {
        if (is_method(__function_per_char))
            __function_per_char(arg0, __last_character - 1, self);
        else if (__function_per_char != undefined && script_exists(__function_per_char))
            script_execute(__function_per_char, arg0, __last_character - 1, self);
    };
    
    static __execute_function_on_complete = function(arg0)
    {
        if (is_method(__function_on_complete))
            __function_on_complete(arg0, self);
        else if (__function_on_complete != undefined && script_exists(__function_on_complete))
            script_execute(__function_on_complete, arg0, self);
    };
    
    static __tick = function(arg0, arg1)
    {
        var _function_scope = (__function_scope != undefined) ? __function_scope : arg1;
        __associate(arg0);
        
        if (__skip)
            __drawn_since_skip = true;
        
        if (__scribble_state.__frames <= __last_tick_frame)
            return undefined;
        
        __last_tick_frame = __scribble_state.__frames;
        
        if (__in == undefined)
            return undefined;
        
        if (__sync_started)
        {
            if (__sync_instance == undefined || !audio_is_playing(__sync_instance))
                __sync_reset();
        }
        
        var _speed = __speed * __inline_speed * (delta_time / 16666);
        var _head_pos = __window_array[__window_index];
        var _model = __last_element.ref.__get_model(true);
        
        if (!is_struct(_model))
            return undefined;
        
        var _pages_array = _model.__get_page_array();
        
        if (array_length(_pages_array) == 0)
            return undefined;
        
        var _page_data = _pages_array[__last_page];
        var _page_character_count = __per_line ? _page_data.__line_count : _page_data.__character_count;
        
        if (!__in)
        {
            if (__skip)
                __window_array[__window_index] = _page_character_count;
            else
                __window_array[__window_index] = min(_page_character_count, _head_pos + _speed);
        }
        else
        {
            var _paused = false;
            
            if (__paused)
            {
                _paused = true;
            }
            else if (__delay_paused)
            {
                if (current_time > __delay_end || __ignore_delay)
                {
                    __delay_paused = false;
                    __window_index = (__window_index + 2) % 6;
                    __window_array[__window_index] = _head_pos;
                    __window_array[__window_index + 1] = _head_pos - __smoothness;
                }
                else
                {
                    _paused = true;
                }
            }
            else if (__sync_started)
            {
                if (audio_is_paused(__sync_instance))
                {
                    _paused = true;
                }
                else if (__sync_paused)
                {
                    if (audio_sound_get_track_position(__sync_instance) > __sync_pause_end)
                    {
                        __sync_paused = false;
                        __window_index = (__window_index + 2) % 6;
                        __window_array[__window_index] = _head_pos;
                        __window_array[__window_index + 1] = _head_pos - __smoothness;
                    }
                    else
                    {
                        _paused = true;
                    }
                }
            }
            
            if (!_paused && array_length(__event_stack) > 0)
            {
                if (!__process_event_stack(_page_character_count, arg0, _function_scope))
                    _paused = true;
            }
            
            if (!_paused)
            {
                var _play_sound = false;
                var _remaining;
                
                if (__skip)
                    _remaining = _page_character_count - _head_pos;
                else
                    _remaining = min(_page_character_count - _head_pos, _speed);
                
                while (_remaining > 0)
                {
                    _head_pos += min(1, _remaining);
                    _remaining -= 1;
                    
                    if (_head_pos >= __last_character)
                    {
                        _play_sound = true;
                        var _found_events = __last_element.ref.get_events(__last_character, undefined, __per_line);
                        var _found_size = array_length(_found_events);
                        
                        if (false && !__ignore_delay && __character_delay && __last_character >= 1 && (__last_character < (_page_character_count - 1) || _found_size > 0))
                        {
                            var _glyph_ord = ds_grid_get(_page_data.__glyph_grid, __last_character - 1, (0 << 0));
                            var _delay = variable_struct_get(__character_delay_dict, _glyph_ord);
                            _delay = (_delay == undefined) ? 0 : _delay;
                            
                            if (__last_character > 1)
                            {
                                _glyph_ord = (_glyph_ord << 32) | ds_grid_get(_page_data.__glyph_grid, __last_character - 2, (0 << 0));
                                var _double_char_delay = variable_struct_get(__character_delay_dict, _glyph_ord);
                                _double_char_delay = (_double_char_delay == undefined) ? 0 : _double_char_delay;
                                _delay = max(_delay, _double_char_delay);
                            }
                            
                            if (_delay > 0)
                                array_push(__event_stack, new __scribble_class_event("delay", [_delay]));
                        }
                        
                        __last_character++;
                        
                        if (__last_character > 1)
                            __execute_function_per_character(arg0);
                        
                        if (_found_size > 0)
                        {
                            var _old_stack_size = array_length(__event_stack);
                            array_resize(__event_stack, _old_stack_size + _found_size);
                            array_copy(__event_stack, _old_stack_size, _found_events, 0, _found_size);
                        }
                        
                        if (!__process_event_stack(_page_character_count, arg0, _function_scope))
                        {
                            _head_pos = __last_character - 1;
                            break;
                        }
                    }
                }
                
                if (_play_sound)
                {
                    if (__last_character <= _page_character_count)
                        __play_sound(_head_pos, 0);
                    else
                        __execute_function_on_complete(_function_scope);
                }
                
                __window_array[__window_index] = _head_pos;
            }
        }
        
        if (__skip)
        {
            var _i = 0;
            
            repeat (3)
            {
                __window_array[_i + 1] = __window_array[_i];
                _i += 2;
            }
        }
        else
        {
            var _i = 0;
            
            repeat (3)
            {
                __window_array[_i + 1] = min(__window_array[_i + 1] + _speed, __window_array[_i]);
                _i += 2;
            }
        }
    };
    
    static __set_shader_uniforms = function()
    {
        static _u_iTypewriterUseLines = shader_get_uniform(__shd_scribble, "u_iTypewriterUseLines");
        static _u_iTypewriterMethod = shader_get_uniform(__shd_scribble, "u_iTypewriterMethod");
        static _u_iTypewriterCharMax = shader_get_uniform(__shd_scribble, "u_iTypewriterCharMax");
        static _u_fTypewriterWindowArray = shader_get_uniform(__shd_scribble, "u_fTypewriterWindowArray");
        static _u_fTypewriterSmoothness = shader_get_uniform(__shd_scribble, "u_fTypewriterSmoothness");
        static _u_vTypewriterStartPos = shader_get_uniform(__shd_scribble, "u_vTypewriterStartPos");
        static _u_vTypewriterStartScale = shader_get_uniform(__shd_scribble, "u_vTypewriterStartScale");
        static _u_fTypewriterStartRotation = shader_get_uniform(__shd_scribble, "u_fTypewriterStartRotation");
        static _u_fTypewriterAlphaDuration = shader_get_uniform(__shd_scribble, "u_fTypewriterAlphaDuration");
        
        if (__in == undefined)
        {
            shader_set_uniform_i(_u_iTypewriterMethod, (0 << 0));
            return undefined;
        }
        
        var _method = __ease_method;
        
        if (!__in)
            _method += (15 << 0);
        
        var _char_max = 0;
        
        if (__backwards)
        {
            var _model = __last_element.ref.__get_model(true);
            
            if (!is_struct(_model))
                return undefined;
            
            var _pages_array = _model.__get_page_array();
            
            if (array_length(_pages_array) > __last_page)
            {
                var _page_data = _pages_array[__last_page];
                _char_max = __per_line ? _page_data.__line_count : _page_data.__character_count;
            }
            else
            {
                __scribble_trace("Warning! Typist page (", __last_page, ") exceeds text element page count (", array_length(_pages_array), ")");
            }
        }
        
        shader_set_uniform_i(_u_iTypewriterUseLines, __per_line);
        shader_set_uniform_i(_u_iTypewriterMethod, _method);
        shader_set_uniform_i(_u_iTypewriterCharMax, _char_max);
        shader_set_uniform_f(_u_fTypewriterSmoothness, __smoothness);
        shader_set_uniform_f(_u_vTypewriterStartPos, __ease_dx, __ease_dy);
        shader_set_uniform_f(_u_vTypewriterStartScale, __ease_xscale, __ease_yscale);
        shader_set_uniform_f(_u_fTypewriterStartRotation, __ease_rotation);
        shader_set_uniform_f(_u_fTypewriterAlphaDuration, __ease_alpha_duration);
        shader_set_uniform_f_array(_u_fTypewriterWindowArray, __window_array);
    };
    
    __last_element = undefined;
    __speed = 1;
    __smoothness = 0;
    __in = undefined;
    __backwards = false;
    __skip = false;
    __skip_paused = false;
    __drawn_since_skip = false;
    __sound_tag_gain = 1;
    __sound_array = undefined;
    __sound_overlap = 0;
    __sound_pitch_min = 1;
    __sound_pitch_max = 1;
    __sound_gain = 1;
    __sound_per_char = false;
    __sound_finish_time = current_time;
    __sound_per_char_exception = false;
    __sound_per_char_exception_dict = undefined;
    __ignore_delay = false;
    __function_scope = undefined;
    __function_per_char = undefined;
    __function_on_complete = undefined;
    __ease_method = (1 << 0);
    __ease_dx = 0;
    __ease_dy = 0;
    __ease_xscale = 1;
    __ease_yscale = 1;
    __ease_rotation = 0;
    __ease_alpha_duration = 1;
    __character_delay = false;
    __character_delay_dict = {};
    __per_line = arg0;
    __sync_started = false;
    __sync_instance = undefined;
    __sync_paused = false;
    __sync_pause_end = infinity;
    reset();
}
