{
  "resourceType": "GMExtension",
  "resourceVersion": "1.2",
  "name": "FMOD",
  "androidactivityinject": "",
  "androidclassname": "Fmod_Android",
  "androidcodeinjection": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidPermissions": [
    "android.permission.RECORD_AUDIO",
  ],
  "androidProps": true,
  "androidsourcedir": "",
  "author": "",
  "classname": "Fmod_iOS",
  "copyToTargets": 3035426153142681806,
  "date": "2025-07-18T18:17:36.5550565+02:00",
  "description": "",
  "exportToGame": true,
  "extensionVersion": "1.0.3",
  "files": [
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"YYFMOD.ext","constants":[],"copyToTargets":2458965418019127502,"filename":"YYFMOD.ext","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_set_frequency","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_ref \n\r/// @param {real} frequency \n\r/// @returns {real}\n\r","externalName":"fmod_channel_set_frequency","help":"fmod_channel_set_frequency(channel_ref, frequency)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_get_frequency","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_get_frequency","help":"fmod_channel_get_frequency(channel_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_set_priority","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_ref \n\r/// @param {real} priority \n\r/// @returns {real}\n\r","externalName":"fmod_channel_set_priority","help":"fmod_channel_set_priority(channel_ref, priority)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_get_priority","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_get_priority","help":"fmod_channel_get_priority(channel_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_set_position","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_ref \r\n/// @param {real} position \r\n/// @param {enum.FMOD_TIMEUNIT} time_unit \r\n/// @returns {real}\r\n","externalName":"fmod_channel_set_position","help":"fmod_channel_set_position(channel_ref, position, time_unit)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_get_position","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_ref \r\n/// @param {enum.FMOD_TIMEUNIT} time_unit \r\n/// @returns {real}\r\n","externalName":"fmod_channel_get_position","help":"fmod_channel_get_position(channel_ref, time_unit)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_set_channel_group","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_ref \n\r/// @param {real} channel_group_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_set_channel_group","help":"fmod_channel_set_channel_group(channel_ref, channel_group_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_get_channel_group","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_get_channel_group","help":"fmod_channel_get_channel_group(channel_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_set_loop_count","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_ref \n\r/// @param {real} loop_count \n\r/// @returns {real}\n\r","externalName":"fmod_channel_set_loop_count","help":"fmod_channel_set_loop_count(channel_ref, loop_count)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_get_loop_count","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_get_loop_count","help":"fmod_channel_get_loop_count(channel_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_set_loop_points","argCount":0,"args":[
            2,
            2,
            2,
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_ref \r\n/// @param {real} loop_start \r\n/// @param {enum.FMOD_TIMEUNIT} loop_start_type \r\n/// @param {real} loop_end \r\n/// @param {enum.FMOD_TIMEUNIT} loop_end_type \r\n/// @returns {real}\r\n","externalName":"fmod_channel_set_loop_points","help":"fmod_channel_set_loop_points(channel_ref, loop_start, loop_start_type, loop_end, loop_end_type)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_get_loop_points_multiplatform","argCount":0,"args":[
            2,
            2,
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_ref \r\n/// @param {real} loop_start_type \r\n/// @param {real} loop_end_type \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_channel_get_loop_points_multiplatform","help":"fmod_channel_get_loop_points_multiplatform(channel_ref, loop_start_type, loop_end_type, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_is_virtual","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_channel_is_virtual","help":"fmod_channel_is_virtual(channel_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_get_current_sound","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_get_current_sound","help":"fmod_channel_get_current_sound(channel_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_get_index","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_get_index","help":"fmod_channel_get_index(channel_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_get_system_object","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_get_system_object","help":"fmod_channel_get_system_object(channel_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_is_playing","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_channel_control_is_playing","help":"fmod_channel_control_is_playing(channel_control_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_stop","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_stop","help":"fmod_channel_control_stop(channel_control_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_paused","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {bool} paused \r\n/// @returns {real}\r\n","externalName":"fmod_channel_control_set_paused","help":"fmod_channel_control_set_paused(channel_control_ref, paused)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_paused","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_channel_control_get_paused","help":"fmod_channel_control_get_paused(channel_control_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_mode","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {enum.FMOD_MODE} mode \r\n/// @returns {real}\r\n","externalName":"fmod_channel_control_set_mode","help":"fmod_channel_control_set_mode(channel_control_ref, mode)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_mode","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @returns {enum.FMOD_MODE}\r\n","externalName":"fmod_channel_control_get_mode","help":"fmod_channel_control_get_mode(channel_control_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_pitch","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {real} pitch\r\n/// @returns {real}\r\n","externalName":"fmod_channel_control_set_pitch","help":"fmod_channel_control_set_pitch(channel_control_ref, pitch_)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_pitch","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_get_pitch","help":"fmod_channel_control_get_pitch(channel_control_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_audibility","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_get_audibility","help":"fmod_channel_control_get_audibility(channel_control_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_volume","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @param {real} volume \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_set_volume","help":"fmod_channel_control_set_volume(channel_control_ref, volume)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_volume","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_get_volume","help":"fmod_channel_control_get_volume(channel_control_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_volume_ramp","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {bool} ramp \r\n/// @returns {real}\r\n","externalName":"fmod_channel_control_set_volume_ramp","help":"fmod_channel_control_set_volume_ramp(channel_control_ref, ramp)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_volume_ramp","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_channel_control_get_volume_ramp","help":"fmod_channel_control_get_volume_ramp(channel_control_ref, ramp)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_mute","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {bool} mute \r\n/// @returns {real}\r\n","externalName":"fmod_channel_control_set_mute","help":"fmod_channel_control_set_mute(channel_control_ref, mute)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_mute","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_channel_control_get_mute","help":"fmod_channel_control_get_mute(channel_control_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_3d_attributes_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_channel_control_set_3d_attributes_multiplatform","help":"fmod_channel_control_set_3d_attributes_multiplatform(channel_control_ref, buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_3d_attributes_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_channel_control_get_3d_attributes_multiplatform","help":"fmod_channel_control_get_3d_attributes_multiplatform(channel_control_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_3d_cone_orientation_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_channel_control_set_3d_cone_orientation_multiplatform","help":"fmod_channel_control_set_3d_cone_orientation_multiplatform(channel_control_ref, buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_3d_cone_orientation_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_channel_control_get_3d_cone_orientation_multiplatform","help":"fmod_channel_control_get_3d_cone_orientation_multiplatform(channel_control_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_3d_cone_settings","argCount":0,"args":[
            2,
            2,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @param {real} inside_cone_angle \n\r/// @param {real} outside_cone_angle \n\r/// @param {real} outside_volume \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_set_3d_cone_settings","help":"fmod_channel_control_set_3d_cone_settings(channel_control_ref, inside_cone_angle, outside_cone_angle, outside_volume)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_3d_cone_settings_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_channel_control_get_3d_cone_settings_multiplatform","help":"fmod_channel_control_get_3d_cone_settings_multiplatform(channel_control_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_3d_custom_rolloff_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_channel_control_set_3d_custom_rolloff_multiplatform","help":"fmod_channel_control_set_3d_custom_rolloff_multiplatform(channel_control_ref, buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_3d_custom_rolloff_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_channel_control_get_3d_custom_rolloff_multiplatform","help":"fmod_channel_control_get_3d_custom_rolloff_multiplatform(channel_control_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_3d_distance_filter","argCount":0,"args":[
            2,
            2,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @param {real} custom \n\r/// @param {real} custom_level \n\r/// @param {real} center_freq \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_set_3d_distance_filter","help":"fmod_channel_control_set_3d_distance_filter(channel_control_ref, custom, custom_level, center_freq)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_3d_distance_filter_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_channel_control_get_3d_distance_filter_multiplatform","help":"fmod_channel_control_get_3d_distance_filter_multiplatform(channel_control_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_3d_doppler_level","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @param {real} level \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_set_3d_doppler_level","help":"fmod_channel_control_set_3d_doppler_level(channel_control_ref, level)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_3d_doppler_level","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_get_3d_doppler_level","help":"fmod_channel_control_get_3d_doppler_level(channel_control_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_3d_level","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @param {real} level \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_set_3d_level","help":"fmod_channel_control_set_3d_level(channel_control_ref, level)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_3d_level","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_get_3d_level","help":"fmod_channel_control_get_3d_level(channel_control_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_3d_min_max_distance","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @param {real} min \n\r/// @param {real} max \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_set_3d_min_max_distance","help":"fmod_channel_control_set_3d_min_max_distance(channel_control_ref, min, max)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_3d_min_max_distance_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_channel_control_get_3d_min_max_distance_multiplatform","help":"fmod_channel_control_get_3d_min_max_distance_multiplatform(channel_control_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_3d_occlusion","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @param {real} direct_occlusion \n\r/// @param {real} reverb_occlusion \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_set_3d_occlusion","help":"fmod_channel_control_set_3d_occlusion(channel_control_ref, direct_occlusion, reverb_occlusion)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_3d_occlusion_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_channel_control_get_3d_occlusion_multiplatform","help":"fmod_channel_control_get_3d_occlusion_multiplatform(channel_control_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_3d_spread","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @param {real} angle \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_set_3d_spread","help":"fmod_channel_control_set_3d_spread(channel_control_ref, angle)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_3d_spread","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_get_3d_spread","help":"fmod_channel_control_get_3d_spread(channel_control_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_pan","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @param {real} pan \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_set_pan","help":"fmod_channel_control_set_pan(channel_control_ref, pan)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_mix_levels_input_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_channel_control_set_mix_levels_input_multiplatform","help":"fmod_channel_control_set_mix_levels_input_multiplatform(channel_control_ref, buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_mix_levels_output","argCount":0,"args":[
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @param {real} front_left \n\r/// @param {real} front_right \n\r/// @param {real} center \n\r/// @param {real} lfe \n\r/// @param {real} surround_left \n\r/// @param {real} surround_right \n\r/// @param {real} back_left \n\r/// @param {real} back_right \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_set_mix_levels_output","help":"fmod_channel_control_set_mix_levels_output(channel_control_ref, front_left, front_right, center, lfe, surround_left, surround_right, back_left, back_right)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_mix_matrix_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_channel_control_set_mix_matrix_multiplatform","help":"fmod_channel_control_set_mix_matrix_multiplatform(channel_control_ref, buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_mix_matrix_multiplatform","argCount":0,"args":[
            2,
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {real} in_channel_hop \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_channel_control_get_mix_matrix_multiplatform","help":"fmod_channel_control_get_mix_matrix_multiplatform(channel_control_ref, in_channel_hop, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_reverb_properties","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @param {real} reverb_instance \n\r/// @param {real} wet \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_set_reverb_properties","help":"fmod_channel_control_set_reverb_properties(channel_control_ref, reverb_instance, wet)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_reverb_properties","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @param {real} reverb_instance \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_get_reverb_properties","help":"fmod_channel_control_get_reverb_properties(channel_control_ref, reverb_instance)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_low_pass_gain","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @param {real} gain \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_set_low_pass_gain","help":"fmod_channel_control_set_low_pass_gain(channel_control_ref, gain)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_low_pass_gain","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_get_low_pass_gain","help":"fmod_channel_control_get_low_pass_gain(channel_control_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_add_dsp","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @param {real} dsp_chain_offset \n\r/// @param {real} dsp_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_add_dsp","help":"fmod_channel_control_add_dsp(channel_control_ref, dsp_chain_offset, dsp_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_remove_dsp","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @param {real} dsp_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_remove_dsp","help":"fmod_channel_control_remove_dsp(channel_control_ref, dsp_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_num_dsps","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_get_num_dsps","help":"fmod_channel_control_get_num_dsps(channel_control_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_dsp","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @param {real} index \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_get_dsp","help":"fmod_channel_control_get_dsp(channel_control_ref, index)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_dsp_index","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @param {real} dsp_ref \n\r/// @param {real} chain_index \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_set_dsp_index","help":"fmod_channel_control_set_dsp_index(channel_control_ref, dsp_ref, chain_index)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_dsp_index","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @param {real} dsp_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_get_dsp_index","help":"fmod_channel_control_get_dsp_index(channel_control_ref, dsp_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_dsp_clock_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_channel_control_get_dsp_clock_multiplatform","help":"fmod_channel_control_get_dsp_clock_multiplatform(channel_control_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_delay_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_channel_control_set_delay_multiplatform","help":"fmod_channel_control_set_delay_multiplatform(channel_control_ref, buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_delay_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_channel_control_get_delay_multiplatform","help":"fmod_channel_control_get_delay_multiplatform(channel_control_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_add_fade_point_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_channel_control_add_fade_point_multiplatform","help":"fmod_channel_control_add_fade_point_multiplatform(channel_control_ref, buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_fade_point_ramp_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_channel_control_set_fade_point_ramp_multiplatform","help":"fmod_channel_control_set_fade_point_ramp_multiplatform(channel_control_ref, buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_remove_fade_points_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_channel_control_remove_fade_points_multiplatform","help":"fmod_channel_control_remove_fade_points_multiplatform(channel_control_ref, buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_fade_points_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} channel_control_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_channel_control_get_fade_points_multiplatform","help":"fmod_channel_control_get_fade_points_multiplatform(channel_control_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_callback","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_set_callback","help":"fmod_channel_control_set_callback(channel_control_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_system_object","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_get_system_object","help":"fmod_channel_control_get_system_object(channel_control_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_set_user_data","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @param {real} data \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_set_user_data","help":"fmod_channel_control_set_user_data(channel_control_ref, data)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_control_get_user_data","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_control_get_user_data","help":"fmod_channel_control_get_user_data(channel_control_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_group_get_num_channels","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_group_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_group_get_num_channels","help":"fmod_channel_group_get_num_channels(channel_group_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_group_get_channel","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_group_ref \n\r/// @param {real} index \n\r/// @returns {real}\n\r","externalName":"fmod_channel_group_get_channel","help":"fmod_channel_group_get_channel(channel_group_ref, index)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_group_add_group_multiplatform","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_group_ref \n\r/// @param {real} child_channel_group_ref \n\r/// @param {real} propagate_dsp_clock \n\r/// @returns {real}\n\r/// @ignore\n\r","externalName":"fmod_channel_group_add_group_multiplatform","help":"fmod_channel_group_add_group_multiplatform(channel_group_ref, child_channel_group_ref, propagate_dsp_clock)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_group_get_num_groups","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_group_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_group_get_num_groups","help":"fmod_channel_group_get_num_groups(channel_group_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_group_get_group","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_group_ref \n\r/// @param {real} group_index \n\r/// @returns {real}\n\r","externalName":"fmod_channel_group_get_group","help":"fmod_channel_group_get_group(channel_group_ref, group_index)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_group_get_parent_group","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_group_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_group_get_parent_group","help":"fmod_channel_group_get_parent_group(channel_group_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_group_get_name","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_group_ref \n\r/// @returns {string}\n\r","externalName":"fmod_channel_group_get_name","help":"fmod_channel_group_get_name(channel_group_ref)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_group_release","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_group_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_group_release","help":"fmod_channel_group_release(channel_group_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_channel_group_get_system_object","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_group_ref \n\r/// @returns {real}\n\r","externalName":"fmod_channel_group_get_system_object","help":"fmod_channel_group_get_system_object(channel_group_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_file_get_disk_busy","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_file_get_disk_busy","help":"fmod_file_get_disk_busy()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_file_set_disk_busy","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} busy \n\r/// @returns {real}\n\r","externalName":"fmod_file_set_disk_busy","help":"fmod_file_set_disk_busy(busy)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_memory_get_stats_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\n\r/// @param {real} blocking \n\r/// @param {Pointer} buff_return \n\r/// @returns {real}\n\r/// @ignore\n\r","externalName":"fmod_memory_get_stats_multiplatform","help":"fmod_memory_get_stats_multiplatform(blocking, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_debug_initialize_multiplatform","argCount":0,"args":[
            2,
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {enum.FMOD_DEBUG_FLAGS} flags \r\n/// @param {enum.FMOD_DEBUG_MODE} mode \r\n/// @param {string|pointer} filename \r\n/// @returns {real}\r\n","externalName":"fmod_debug_initialize_multiplatform","help":"fmod_debug_initialize(flags, mode, filename)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_thread_set_attributes","argCount":0,"args":[
            2,
            2,
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {enum.FMOD_THREAD_TYPE} type \r\n/// @param {enum.FMOD_THREAD_AFFINITY} affinity \r\n/// @param {enum.FMOD_THREAD_PRIORITY} priority \r\n/// @param {enum.FMOD_THREAD_STACK_SIZE} stacksize \r\n/// @returns {real}\r\n","externalName":"fmod_thread_set_attributes","help":"fmod_thread_set_attributes(type, affinity, priority, stacksize)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_add_input_multiplatform","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_ref \n\r/// @param {real} dsp_input_ref \n\r/// @param {real} dsp_connection_type \n\r/// @returns {real}\n\r/// @ignore\n\r","externalName":"fmod_dsp_add_input_multiplatform","help":"fmod_dsp_add_input_multiplatform(dsp_ref, dsp_input_ref, dsp_connection_type)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_input_multiplatform","argCount":0,"args":[
            2,
            2,
            1,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_ref \n\r/// @param {real} dsp_input_index \n\r/// @param {Pointer} buff_return \n\r/// @returns {real}\n\r/// @ignore\n\r","externalName":"fmod_dsp_get_input_multiplatform","help":"fmod_dsp_get_input_multiplatform(dsp_ref, dsp_input_index, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_output_multiplatform","argCount":0,"args":[
            2,
            2,
            1,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_ref \n\r/// @param {real} dsp_output_index \n\r/// @param {Pointer} buff_return \n\r/// @returns {real}\n\r/// @ignore\n\r","externalName":"fmod_dsp_get_output_multiplatform","help":"fmod_dsp_get_output_multiplatform(dsp_ref, dsp_output_index, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_num_inputs","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_ref \n\r/// @returns {real}\n\r","externalName":"fmod_dsp_get_num_inputs","help":"fmod_dsp_get_num_inputs(dsp_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_num_outputs","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_ref \n\r/// @returns {real}\n\r","externalName":"fmod_dsp_get_num_outputs","help":"fmod_dsp_get_num_outputs(dsp_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_disconnect_all","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} dsp_ref \r\n/// @param {bool} inputs \r\n/// @param {bool} outputs \r\n/// @returns {real}\r\n","externalName":"fmod_dsp_disconnect_all","help":"fmod_dsp_disconnect_all(dsp_ref, inputs, outputs)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_disconnect_from_mutliplatform","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} dsp_ref \r\n/// @param {real} dsp_other_ref\r\n/// @param {real} dsp_connection_ref\r\n/// @returns {real}\r\n","externalName":"fmod_dsp_disconnect_from_mutliplatform","help":"fmod_dsp_disconnect_from(dsp_ref, dsp_other_ref)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_data_parameter_index","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_ref \n\r/// @param {real} data_type \n\r/// @returns {real}\n\r","externalName":"fmod_dsp_get_data_parameter_index","help":"fmod_dsp_get_data_parameter_index(dsp_ref, data_type)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_num_parameters","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_ref \n\r/// @returns {real}\n\r","externalName":"fmod_dsp_get_num_parameters","help":"fmod_dsp_get_num_parameters(dsp_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_set_parameter_bool","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} dsp_ref \r\n/// @param {real} parameter_index \r\n/// @param {bool} value \r\n/// @returns {real}\r\n","externalName":"fmod_dsp_set_parameter_bool","help":"fmod_dsp_set_parameter_bool(dsp_ref, parameter_index, value)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_parameter_bool","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_ref \n\r/// @param {real} parameter_index \n\r/// @returns {real}\n\r","externalName":"fmod_dsp_get_parameter_bool","help":"fmod_dsp_get_parameter_bool(dsp_ref, parameter_index)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_set_parameter_data_multiplatform","argCount":0,"args":[
            2,
            2,
            1,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} dsp_ref \r\n/// @param {real} parameter_index \r\n/// @param {Pointer} buff \r\n/// @param {real} length \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_dsp_set_parameter_data_multiplatform","help":"fmod_dsp_set_parameter_data_multiplatform(dsp_ref, parameter_index, buff, length)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_parameter_data_multiplatform","argCount":0,"args":[
            2,
            2,
            1,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} dsp_ref \r\n/// @param {real} parameter_index \r\n/// @param {Pointer} buff \r\n/// @param {real} length \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_dsp_get_parameter_data_multiplatform","help":"fmod_dsp_get_parameter_data_multiplatform(dsp_ref, parameter_index, buff, length)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_set_parameter_float","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_ref \n\r/// @param {real} parameter_index \n\r/// @param {real} value \n\r/// @returns {real}\n\r","externalName":"fmod_dsp_set_parameter_float","help":"fmod_dsp_set_parameter_float(dsp_ref, parameter_index, value)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_parameter_float","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_ref \n\r/// @param {real} parameter_index \n\r/// @returns {real}\n\r","externalName":"fmod_dsp_get_parameter_float","help":"fmod_dsp_get_parameter_float(dsp_ref, parameter_index)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_set_parameter_int","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_ref \n\r/// @param {real} parameter_index \n\r/// @param {real} value \n\r/// @returns {real}\n\r","externalName":"fmod_dsp_set_parameter_int","help":"fmod_dsp_set_parameter_int(dsp_ref, parameter_index, value)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_parameter_int","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_ref \n\r/// @param {real} parameter_index \n\r/// @returns {real}\n\r","externalName":"fmod_dsp_get_parameter_int","help":"fmod_dsp_get_parameter_int(dsp_ref, parameter_index)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_parameter_info_multiplatform","argCount":0,"args":[
            2,
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} dsp_ref \r\n/// @param {real} parameter_index \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_dsp_get_parameter_info_multiplatform","help":"fmod_dsp_get_parameter_info_multiplatform(dsp_ref, parameter_index, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_set_channel_format","argCount":0,"args":[
            2,
            2,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_ref \n\r/// @param {real} channel_mask \n\r/// @param {real} num_channels \n\r/// @param {real} speaker_mode \n\r/// @returns {real}\n\r","externalName":"fmod_dsp_set_channel_format","help":"fmod_dsp_set_channel_format(dsp_ref, channel_mask, num_channels, speaker_mode)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_channel_format_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} dsp_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_dsp_get_channel_format_multiplatform","help":"fmod_dsp_get_channel_format_multiplatform(dsp_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_output_channel_format_multiplatform","argCount":0,"args":[
            2,
            1,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} dsp_ref \r\n/// @param {Pointer} buff_args \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_dsp_get_output_channel_format_multiplatform","help":"fmod_dsp_get_output_channel_format_multiplatform(dsp_ref, buff_args, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_metering_info_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} dsp_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_dsp_get_metering_info_multiplatform","help":"fmod_dsp_get_metering_info_multiplatform(dsp_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_set_metering_enabled","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} dsp_ref \r\n/// @param {bool} enabled_in \r\n/// @param {bool} enabled_out \r\n/// @returns {real}\r\n","externalName":"fmod_dsp_set_metering_enabled","help":"fmod_dsp_set_metering_enabled(dsp_ref, enabled_in, enabled_out)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_metering_enabled_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} dsp_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_dsp_get_metering_enabled_multiplatform","help":"fmod_dsp_get_metering_enabled_multiplatform(dsp_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_set_active","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} dsp_ref \r\n/// @param {bool} active \r\n/// @returns {real}\r\n","externalName":"fmod_dsp_set_active","help":"fmod_dsp_set_active(dsp_ref, active)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_active","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} dsp_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_dsp_get_active","help":"fmod_dsp_get_active(dsp_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_set_bypass","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} dsp_ref \r\n/// @param {bool} bypass \r\n/// @returns {real}\r\n","externalName":"fmod_dsp_set_bypass","help":"fmod_dsp_set_bypass(dsp_ref, bypass)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_bypass","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} dsp_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_dsp_get_bypass","help":"fmod_dsp_get_bypass(dsp_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_set_wet_dry_mix","argCount":0,"args":[
            2,
            2,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_ref \n\r/// @param {real} prewet \n\r/// @param {real} postwet \n\r/// @param {real} dry \n\r/// @returns {real}\n\r","externalName":"fmod_dsp_set_wet_dry_mix","help":"fmod_dsp_set_wet_dry_mix(dsp_ref, prewet, postwet, dry)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_wet_dry_mix_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} dsp_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_dsp_get_wet_dry_mix_multiplatform","help":"fmod_dsp_get_wet_dry_mix_multiplatform(dsp_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_idle","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} dsp_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_dsp_get_idle","help":"fmod_dsp_get_idle(dsp_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_reset","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_ref \n\r/// @returns {real}\n\r","externalName":"fmod_dsp_reset","help":"fmod_dsp_reset(dsp_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_release","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_ref \n\r/// @returns {real}\n\r","externalName":"fmod_dsp_release","help":"fmod_dsp_release(dsp_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_type","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} dsp_ref \r\n/// @returns {enum.FMOD_DSP_TYPE}\r\n","externalName":"fmod_dsp_get_type","help":"fmod_dsp_get_type(dsp_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_info_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_ref \n\r/// @param {Pointer} buff_return \n\r/// @returns {real}\n\r/// @ignore\n\r","externalName":"fmod_dsp_get_info_multiplatform","help":"fmod_dsp_get_info_multiplatform(dsp_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_cpu_usage_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} dsp_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_dsp_get_cpu_usage_multiplatform","help":"fmod_dsp_get_cpu_usage_multiplatform(dsp_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_set_user_data","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_ref \n\r/// @param {real} data \n\r/// @returns {real}\n\r","externalName":"fmod_dsp_set_user_data","help":"fmod_dsp_set_user_data(dsp_ref, data)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_user_data","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_ref \n\r/// @returns {real}\n\r","externalName":"fmod_dsp_get_user_data","help":"fmod_dsp_get_user_data(dsp_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_set_callback","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_ref \n\r/// @returns {real}\n\r","externalName":"fmod_dsp_set_callback","help":"fmod_dsp_set_callback(dsp_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_get_system_object","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_ref \n\r/// @returns {real}\n\r","externalName":"fmod_dsp_get_system_object","help":"fmod_dsp_get_system_object(dsp_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_connection_set_mix","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_connection_ref \n\r/// @param {real} volume \n\r/// @returns {real}\n\r","externalName":"fmod_dsp_connection_set_mix","help":"fmod_dsp_connection_set_mix(dsp_connection_ref, volume)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_connection_get_mix","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_connection_ref \n\r/// @returns {real}\n\r","externalName":"fmod_dsp_connection_get_mix","help":"fmod_dsp_connection_get_mix(dsp_connection_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_connection_set_mix_matrix_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} dsp_connection_ref \r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_dsp_connection_set_mix_matrix_multiplatform","help":"fmod_dsp_connection_set_mix_matrix_multiplatform(dsp_connection_ref, buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_connection_get_mix_matrix_multiplatform","argCount":0,"args":[
            2,
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} dsp_connection_ref \r\n/// @param {real} inchannel_hop \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_dsp_connection_get_mix_matrix_multiplatform","help":"fmod_dsp_connection_get_mix_matrix_multiplatform(dsp_connection_ref, inchannel_hop, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_connection_get_input","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_connection_ref \n\r/// @returns {real}\n\r","externalName":"fmod_dsp_connection_get_input","help":"fmod_dsp_connection_get_input(dsp_connection_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_connection_get_output","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_connection_ref \n\r/// @returns {real}\n\r","externalName":"fmod_dsp_connection_get_output","help":"fmod_dsp_connection_get_output(dsp_connection_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_connection_get_type","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} dsp_connection_ref \r\n/// @returns {enum.FMOD_DSPCONNECTION_TYPE}\r\n","externalName":"fmod_dsp_connection_get_type","help":"fmod_dsp_connection_get_type(dsp_connection_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_connection_set_user_data","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_connection_ref \n\r/// @param {real} data \n\r/// @returns {real}\n\r","externalName":"fmod_dsp_connection_set_user_data","help":"fmod_dsp_connection_set_user_data(dsp_connection_ref, data)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_dsp_connection_get_user_data","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} dsp_connection_ref \n\r/// @returns {real}\n\r","externalName":"fmod_dsp_connection_get_user_data","help":"fmod_dsp_connection_get_user_data(dsp_connection_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_geometry_set_polygon_attributes","argCount":0,"args":[
            2,
            2,
            2,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} geometry_ref \n\r/// @param {real} polygon_index \n\r/// @param {real} direct_occlusion \n\r/// @param {real} reverb_occlusion \n\r/// @param {real} double_sided \n\r/// @returns {real}\n\r","externalName":"fmod_geometry_set_polygon_attributes","help":"fmod_geometry_set_polygon_attributes(geometry_ref, polygon_index, direct_occlusion, reverb_occlusion, double_sided)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_geometry_get_polygon_attributes_multiplatform","argCount":0,"args":[
            2,
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} geometry_ref \r\n/// @param {real} polygon_index \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_geometry_get_polygon_attributes_multiplatform","help":"fmod_geometry_get_polygon_attributes_multiplatform(geometry_ref, polygon_index, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_geometry_get_polygon_num_vertices","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} geometry_ref \n\r/// @param {real} polygon_index \n\r/// @returns {real}\n\r","externalName":"fmod_geometry_get_polygon_num_vertices","help":"fmod_geometry_get_polygon_num_vertices(geometry_ref, polygon_index)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_geometry_set_polygon_vertex_multiplatform","argCount":0,"args":[
            2,
            2,
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} geometry_ref \r\n/// @param {real} polygon_index \r\n/// @param {real} vertex_index \r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_geometry_set_polygon_vertex_multiplatform","help":"fmod_geometry_set_polygon_vertex_multiplatform(geometry_ref, polygon_index, vertex_index, buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_geometry_get_polygon_vertex_multiplatform","argCount":0,"args":[
            2,
            2,
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} geometry_ref \r\n/// @param {real} polygon_index \r\n/// @param {real} vertex_index \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_geometry_get_polygon_vertex_multiplatform","help":"fmod_geometry_get_polygon_vertex_multiplatform(geometry_ref, polygon_index, vertex_index, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_geometry_set_position_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} geometry_ref \r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_geometry_set_position_multiplatform","help":"fmod_geometry_set_position_multiplatform(geometry_ref, buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_geometry_get_position_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} geometry_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_geometry_get_position_multiplatform","help":"fmod_geometry_get_position_multiplatform(geometry_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_geometry_set_rotation_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} geometry_ref \r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_geometry_set_rotation_multiplatform","help":"fmod_geometry_set_rotation_multiplatform(geometry_ref, buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_geometry_get_rotation_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} geometry_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_geometry_get_rotation_multiplatform","help":"fmod_geometry_get_rotation_multiplatform(geometry_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_geometry_set_scale_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} geometry_ref \r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_geometry_set_scale_multiplatform","help":"fmod_geometry_set_scale_multiplatform(geometry_ref, buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_geometry_get_scale_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} geometry_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_geometry_get_scale_multiplatform","help":"fmod_geometry_get_scale_multiplatform(geometry_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_geometry_add_polygon_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} geometry_ref \r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_geometry_add_polygon_multiplatform","help":"fmod_geometry_add_polygon_multiplatform(geometry_ref, buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_geometry_set_active","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} geometry_ref \r\n/// @param {bool} active \r\n/// @returns {real}\r\n","externalName":"fmod_geometry_set_active","help":"fmod_geometry_set_active(geometry_ref, active)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_geometry_get_active","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} geometry_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_geometry_get_active","help":"fmod_geometry_get_active(geometry_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_geometry_get_max_polygons_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\n\r/// @param {real} geometry_ref \n\r/// @param {Pointer} buff_return \n\r/// @returns {real}\n\r","externalName":"fmod_geometry_get_max_polygons_multiplatform","help":"fmod_geometry_get_max_polygons_multiplatform(geometry_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_geometry_get_num_polygons","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} geometry_ref \n\r/// @returns {real}\n\r","externalName":"fmod_geometry_get_num_polygons","help":"fmod_geometry_get_num_polygons(geometry_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_geometry_set_user_data","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} geometry_ref \n\r/// @param {real} data \n\r/// @returns {real}\n\r","externalName":"fmod_geometry_set_user_data","help":"fmod_geometry_set_user_data(geometry_ref, data)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_geometry_get_user_data","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} geometry_ref \n\r/// @returns {real}\n\r","externalName":"fmod_geometry_get_user_data","help":"fmod_geometry_get_user_data(geometry_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_geometry_release","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} geometry_ref \n\r/// @returns {real}\n\r","externalName":"fmod_geometry_release","help":"fmod_geometry_release(geometry_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_geometry_save_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} geometry_ref \r\n/// @param {Pointer} buff_args\r\n/// @returns {real}\r\n","externalName":"fmod_geometry_save_multiplatform","help":"fmod_geometry_save_multiplatform(geometry_ref, buff)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_reverb_3d_set_3d_attributes_multiplatform","argCount":0,"args":[
            2,
            1,
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} reverb_3d_ref \r\n/// @param {Pointer} buff_args \r\n/// @param {real} min_distance \r\n/// @param {real} max_distance \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_reverb_3d_set_3d_attributes_multiplatform","help":"fmod_reverb_3d_set_3d_attributes_multiplatform(reverb_3d_ref, buff_args, min_distance, max_distance)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_reverb_3d_get_3d_attributes_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} reverb_3d_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_reverb_3d_get_3d_attributes_multiplatform","help":"fmod_reverb_3d_get_3d_attributes_multiplatform(reverb_3d_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_reverb_3d_set_properties","argCount":0,"args":[
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} reverb_3d_ref \n\r/// @param {real} decay_time \n\r/// @param {real} early_delay \n\r/// @param {real} late_delay \n\r/// @param {real} hf_reference \n\r/// @param {real} hf_decay_ratio \n\r/// @param {real} diffusion \n\r/// @param {real} density \n\r/// @param {real} low_shelf_frequency \n\r/// @param {real} low_shelf_gain \n\r/// @param {real} high_cut \n\r/// @param {real} early_late_mix \n\r/// @param {real} wet_level \n\r/// @returns {real}\n\r","externalName":"fmod_reverb_3d_set_properties","help":"fmod_reverb_3d_set_properties(reverb_3d_ref, decay_time, early_delay, late_delay, hf_reference, hf_decay_ratio, diffusion, density, low_shelf_frequency, low_shelf_gain, high_cut, early_late_mix, wet_level)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_reverb_3d_get_properties_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} reverb_3d_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_reverb_3d_get_properties_multiplatform","help":"fmod_reverb_3d_get_properties_multiplatform(reverb_3d_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_reverb_3d_set_active","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} reverb_3d_ref \n\r/// @param {real} active \n\r/// @returns {real}\n\r","externalName":"fmod_reverb_3d_set_active","help":"fmod_reverb_3d_set_active(reverb_3d_ref, active)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_reverb_3d_get_active","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} reverb_3d_ref \n\r/// @returns {real}\n\r","externalName":"fmod_reverb_3d_get_active","help":"fmod_reverb_3d_get_active(reverb_3d_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_reverb_3d_release","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} reverb_3d_ref \n\r/// @returns {real}\n\r","externalName":"fmod_reverb_3d_release","help":"fmod_reverb_3d_release(reverb_3d_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_reverb_3d_set_user_data","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} reverb_3d_ref \n\r/// @param {real} data \n\r/// @returns {real}\n\r","externalName":"fmod_reverb_3d_set_user_data","help":"fmod_reverb_3d_set_user_data(reverb_3d_ref, data)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_reverb_3d_get_user_data","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} reverb_3d_ref \n\r/// @returns {real}\n\r","externalName":"fmod_reverb_3d_get_user_data","help":"fmod_reverb_3d_get_user_data(reverb_3d_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_name","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @returns {string}\n\r","externalName":"fmod_sound_get_name","help":"fmod_sound_get_name(sound_ref)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_format_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} sound_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_sound_get_format_multiplatform","help":"fmod_sound_get_format_multiplatform(sound_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_length","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} sound_ref \r\n/// @param {enum.FMOD_TIMEUNIT} length_type \r\n/// @returns {real}\r\n","externalName":"fmod_sound_get_length","help":"fmod_sound_get_length(sound_ref, length_type)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_num_tags_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} sound_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_sound_get_num_tags_multiplatform","help":"fmod_sound_get_num_tags_multiplatform(sound_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_tag_multiplatform","argCount":0,"args":[
            2,
            2,
            1,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} sound_ref \r\n/// @param {real} tag_index \r\n/// @param {Pointer} buff_args \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_sound_get_tag_multiplatform","help":"fmod_sound_get_tag_multiplatform(sound_ref, tag_index, buff_args, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_set_3d_cone_settings","argCount":0,"args":[
            2,
            2,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @param {real} inside_cone_angle \n\r/// @param {real} outside_cone_angle \n\r/// @param {real} outside_volume \n\r/// @returns {real}\n\r","externalName":"fmod_sound_set_3d_cone_settings","help":"fmod_sound_set_3d_cone_settings(sound_ref, inside_cone_angle, outside_cone_angle, outside_volume)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_3d_cone_settings_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} sound_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_sound_get_3d_cone_settings_multiplatform","help":"fmod_sound_get_3d_cone_settings_multiplatform(sound_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_set_3d_custom_rolloff_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} sound_ref \r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_sound_set_3d_custom_rolloff_multiplatform","help":"fmod_sound_set_3d_custom_rolloff_multiplatform(sound_ref, buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_3d_custom_rolloff_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} sound_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_sound_get_3d_custom_rolloff_multiplatform","help":"fmod_sound_get_3d_custom_rolloff_multiplatform(sound_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_set_3d_min_max_distance","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @param {real} min \n\r/// @param {real} max \n\r/// @returns {real}\n\r","externalName":"fmod_sound_set_3d_min_max_distance","help":"fmod_sound_set_3d_min_max_distance(sound_ref, min, max)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_3d_min_max_distance_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} sound_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_sound_get_3d_min_max_distance_multiplatform","help":"fmod_sound_get_3d_min_max_distance_multiplatform(sound_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_set_defaults","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @param {real} frequency \n\r/// @param {real} priority \n\r/// @returns {real}\n\r","externalName":"fmod_sound_set_defaults","help":"fmod_sound_set_defaults(sound_ref, frequency, priority)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_defaults_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} sound_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_sound_get_defaults_multiplatform","help":"fmod_sound_get_defaults_multiplatform(sound_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_set_mode","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @param {real} mode_ \n\r/// @returns {real}\n\r","externalName":"fmod_sound_set_mode","help":"fmod_sound_set_mode(sound_ref, mode_)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_mode","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @returns {real}\n\r","externalName":"fmod_sound_get_mode","help":"fmod_sound_get_mode(sound_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_set_loop_count","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @param {real} count \n\r/// @returns {real}\n\r","externalName":"fmod_sound_set_loop_count","help":"fmod_sound_set_loop_count(sound_ref, count)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_loop_count","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @returns {real}\n\r","externalName":"fmod_sound_get_loop_count","help":"fmod_sound_get_loop_count(sound_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_set_loop_points","argCount":0,"args":[
            2,
            2,
            2,
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} sound_ref \r\n/// @param {real} loop_start \r\n/// @param {enum.FMOD_TIMEUNIT} loop_start_type \r\n/// @param {real} loop_end \r\n/// @param {enum.FMOD_TIMEUNIT} loop_end_type \r\n/// @returns {real}\r\n","externalName":"fmod_sound_set_loop_points","help":"fmod_sound_set_loop_points(sound_ref, loop_start, loop_start_type, loop_end, loop_end_type)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_loop_points_multiplatform","argCount":0,"args":[
            2,
            2,
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} sound_ref \r\n/// @param {real} loop_start_type \r\n/// @param {real} loop_end_type \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_sound_get_loop_points_multiplatform","help":"fmod_sound_get_loop_points_multiplatform(sound_ref, loop_start_type, loop_end_type, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_set_sound_group","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @param {real} sound_group_ref \n\r/// @returns {real}\n\r","externalName":"fmod_sound_set_sound_group","help":"fmod_sound_set_sound_group(sound_ref, sound_group_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_sound_group","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @returns {real}\n\r","externalName":"fmod_sound_get_sound_group","help":"fmod_sound_get_sound_group(sound_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_num_sub_sounds","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @returns {real}\n\r","externalName":"fmod_sound_get_num_sub_sounds","help":"fmod_sound_get_num_sub_sounds(sound_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_sub_sound","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @param {real} sub_sound_index \n\r/// @returns {real}\n\r","externalName":"fmod_sound_get_sub_sound","help":"fmod_sound_get_sub_sound(sound_ref, sub_sound_index)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_sub_sound_parent","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @returns {real}\n\r","externalName":"fmod_sound_get_sub_sound_parent","help":"fmod_sound_get_sub_sound_parent(sound_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_open_state_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} sound_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_sound_get_open_state_multiplatform","help":"fmod_sound_get_open_state_multiplatform(sound_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_read_data_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} sound_ref \r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_sound_read_data_multiplatform","help":"fmod_sound_read_data_multiplatform(sound_ref, buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_seek_data","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @param {real} pcm \n\r/// @returns {real}\n\r","externalName":"fmod_sound_seek_data","help":"fmod_sound_seek_data(sound_ref, pcm)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_lock_multiplatform","argCount":0,"args":[
            2,
            1,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} sound_ref \r\n/// @param {Pointer} buff_args \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_sound_lock_multiplatform","help":"fmod_sound_lock_multiplatform(sound_ref, buff_args, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_unlock_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} sound_ref \r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_sound_unlock_multiplatform","help":"fmod_sound_unlock_multiplatform(sound_ref, buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_music_num_channels","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @returns {real}\n\r","externalName":"fmod_sound_get_music_num_channels","help":"fmod_sound_get_music_num_channels(sound_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_set_music_channel_volume","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} sound_ref \r\n/// @param {real} channel_index \r\n/// @param {real} volume \r\n/// @returns {real}\r\n","externalName":"fmod_sound_set_music_channel_volume","help":"fmod_sound_set_music_channel_volume(sound_ref, channel_index, volumen_)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_music_channel_volume","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @param {real} channel_index \n\r/// @returns {real}\n\r","externalName":"fmod_sound_get_music_channel_volume","help":"fmod_sound_get_music_channel_volume(sound_ref, channel_index)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_set_music_speed","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @param {real} speed \n\r/// @returns {real}\n\r","externalName":"fmod_sound_set_music_speed","help":"fmod_sound_set_music_speed(sound_ref, speed)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_music_speed","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @returns {real}\n\r","externalName":"fmod_sound_get_music_speed","help":"fmod_sound_get_music_speed(sound_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_sync_point_multiplatform","argCount":0,"args":[
            2,
            2,
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} sound_ref \r\n/// @param {real} point_index \r\n/// @param {enum.FMOD_TIMEUNIT} offset_type \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_sound_get_sync_point_multiplatform","help":"fmod_sound_get_sync_point_multiplatform(sound_ref, point_index, offset_type, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_num_sync_points","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @returns {real}\n\r","externalName":"fmod_sound_get_num_sync_points","help":"fmod_sound_get_num_sync_points(sound_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_add_sync_point","argCount":0,"args":[
            2,
            2,
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} sound_ref \r\n/// @param {real} offset \r\n/// @param {enum.FMOD_TIMEUNIT} offset_type \r\n/// @param {string} name \r\n/// @returns {real}\r\n","externalName":"fmod_sound_add_sync_point","help":"fmod_sound_add_sync_point(sound_ref, offset, offset_type, name)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_delete_sync_point","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @param {real} point_index \n\r/// @returns {real}\n\r","externalName":"fmod_sound_delete_sync_point","help":"fmod_sound_delete_sync_point(sound_ref, point_index)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_release","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @returns {real}\n\r","externalName":"fmod_sound_release","help":"fmod_sound_release(sound_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_system_object","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @returns {real}\n\r","externalName":"fmod_sound_get_system_object","help":"fmod_sound_get_system_object(sound_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_set_user_data","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @param {real} data \n\r/// @returns {real}\n\r","externalName":"fmod_sound_set_user_data","help":"fmod_sound_set_user_data(sound_ref, data)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_get_user_data","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_ref \n\r/// @returns {real}\n\r","externalName":"fmod_sound_get_user_data","help":"fmod_sound_get_user_data(sound_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_group_set_max_audible","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_group_ref \n\r/// @param {real} max_audible \n\r/// @returns {real}\n\r","externalName":"fmod_sound_group_set_max_audible","help":"fmod_sound_group_set_max_audible(sound_group_ref, max_audible)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_group_get_max_audible","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_group_ref \n\r/// @returns {real}\n\r","externalName":"fmod_sound_group_get_max_audible","help":"fmod_sound_group_get_max_audible(sound_group_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_group_set_max_audible_behavior","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} sound_group_ref \r\n/// @param {enum.FMOD_SOUNDGROUP_BEHAVIOR} behavior \r\n/// @returns {real}\r\n","externalName":"fmod_sound_group_set_max_audible_behavior","help":"fmod_sound_group_set_max_audible_behavior(sound_group_ref, behavior)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_group_get_max_audible_behavior","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} sound_group_ref \r\n/// @returns {enum.FMOD_SOUNDGROUP_BEHAVIOR}\r\n","externalName":"fmod_sound_group_get_max_audible_behavior","help":"fmod_sound_group_get_max_audible_behavior(sound_group_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_group_set_mute_fade_speed","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_group_ref \n\r/// @param {real} speed \n\r/// @returns {real}\n\r","externalName":"fmod_sound_group_set_mute_fade_speed","help":"fmod_sound_group_set_mute_fade_speed(sound_group_ref, speed)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_group_get_mute_fade_speed","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_group_ref \n\r/// @returns {real}\n\r","externalName":"fmod_sound_group_get_mute_fade_speed","help":"fmod_sound_group_get_mute_fade_speed(sound_group_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_group_set_volume","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_group_ref \n\r/// @param {real} volume \n\r/// @returns {real}\n\r","externalName":"fmod_sound_group_set_volume","help":"fmod_sound_group_set_volume(sound_group_ref, volume)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_group_get_volume","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_group_ref \n\r/// @returns {real}\n\r","externalName":"fmod_sound_group_get_volume","help":"fmod_sound_group_get_volume(sound_group_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_group_get_num_sounds","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_group_ref \n\r/// @returns {real}\n\r","externalName":"fmod_sound_group_get_num_sounds","help":"fmod_sound_group_get_num_sounds(sound_group_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_group_get_sound","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_group_ref \n\r/// @param {real} sound_index \n\r/// @returns {real}\n\r","externalName":"fmod_sound_group_get_sound","help":"fmod_sound_group_get_sound(sound_group_ref, sound_index)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_group_get_num_playing","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_group_ref \n\r/// @returns {real}\n\r","externalName":"fmod_sound_group_get_num_playing","help":"fmod_sound_group_get_num_playing(sound_group_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_group_stop","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_group_ref \n\r/// @returns {real}\n\r","externalName":"fmod_sound_group_stop","help":"fmod_sound_group_stop(sound_group_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_group_get_name","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_group_ref \n\r/// @returns {string}\n\r","externalName":"fmod_sound_group_get_name","help":"fmod_sound_group_get_name(sound_group_ref)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_group_release","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_group_ref \n\r/// @returns {real}\n\r","externalName":"fmod_sound_group_release","help":"fmod_sound_group_release(sound_group_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_group_get_system_object","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_group_ref \n\r/// @returns {real}\n\r","externalName":"fmod_sound_group_get_system_object","help":"fmod_sound_group_get_system_object(sound_group_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_group_set_user_data","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_group_ref \n\r/// @param {real} data \n\r/// @returns {real}\n\r","externalName":"fmod_sound_group_set_user_data","help":"fmod_sound_group_set_user_data(sound_group_ref, data)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_sound_group_get_user_data","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sound_group_ref \n\r/// @returns {real}\n\r","externalName":"fmod_sound_group_get_user_data","help":"fmod_sound_group_get_user_data(sound_group_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bank_get_loading_state","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} bank_ref \r\n/// @returns {enum.FMOD_STUDIO_LOADING_STATE}\r\n","externalName":"fmod_studio_bank_get_loading_state","help":"fmod_studio_bank_get_loading_state(bank_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bank_load_sample_data","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} bank_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_bank_load_sample_data","help":"fmod_studio_bank_load_sample_data(bank_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bank_unload_sample_data","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} bank_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_bank_unload_sample_data","help":"fmod_studio_bank_unload_sample_data(bank_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bank_get_sample_loading_state","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} bank_ref \r\n/// @returns {enum.FMOD_STUDIO_LOADING_STATE}\r\n","externalName":"fmod_studio_bank_get_sample_loading_state","help":"fmod_studio_bank_get_sample_loading_state(bank_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bank_unload","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} bank_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_bank_unload","help":"fmod_studio_bank_unload(bank_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bank_get_bus_count","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} bank_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_bank_get_bus_count","help":"fmod_studio_bank_get_bus_count(bank_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bank_get_bus_list_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} bank_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_bank_get_bus_list_multiplatform","help":"fmod_studio_bank_get_bus_list_multiplatform(bank_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bank_get_event_count","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} bank_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_bank_get_event_count","help":"fmod_studio_bank_get_event_count(bank_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bank_get_event_description_list_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} bank_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_bank_get_event_description_list_multiplatform","help":"fmod_studio_bank_get_event_description_list_multiplatform(bank_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bank_get_string_count","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} bank_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_bank_get_string_count","help":"fmod_studio_bank_get_string_count(bank_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bank_get_string_info_multiplatform","argCount":0,"args":[
            2,
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} bank_ref \r\n/// @param {real} string_index \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_bank_get_string_info_multiplatform","help":"fmod_studio_bank_get_string_info_multiplatform(bank_ref, string_index, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bank_get_vca_count","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} bank_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_bank_get_vca_count","help":"fmod_studio_bank_get_vca_count(bank_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bank_get_vca_list_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} bank_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_bank_get_vca_list_multiplatform","help":"fmod_studio_bank_get_vca_list_multiplatform(bank_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bank_get_id","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} bank_ref \n\r/// @returns {string}\n\r","externalName":"fmod_studio_bank_get_id","help":"fmod_studio_bank_get_id(bank_ref)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bank_get_path","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} bank_ref \n\r/// @returns {string}\n\r","externalName":"fmod_studio_bank_get_path","help":"fmod_studio_bank_get_path(bank_ref)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bank_is_valid","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} bank_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_studio_bank_is_valid","help":"fmod_studio_bank_is_valid(bank_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bank_set_user_data","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} bank_ref \n\r/// @param {real} data \n\r/// @returns {real}\n\r","externalName":"fmod_studio_bank_set_user_data","help":"fmod_studio_bank_set_user_data(bank_ref, data)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bank_get_user_data","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} bank_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_bank_get_user_data","help":"fmod_studio_bank_get_user_data(bank_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bus_set_paused","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} bus_ref \r\n/// @param {bool} pause \r\n/// @returns {real}\r\n","externalName":"fmod_studio_bus_set_paused","help":"fmod_studio_bus_set_paused(bus_ref, pause)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bus_get_paused","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} bus_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_studio_bus_get_paused","help":"fmod_studio_bus_get_paused(bus_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bus_stop_all_events","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} bus_ref \r\n/// @param {enum.FMOD_STUDIO_STOP_MODE} stop_mode \r\n/// @returns {real}\r\n","externalName":"fmod_studio_bus_stop_all_events","help":"fmod_studio_bus_stop_all_events(bus_ref, stop_mode)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bus_set_volume","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} bus_ref \n\r/// @param {real} volumen \n\r/// @returns {real}\n\r","externalName":"fmod_studio_bus_set_volume","help":"fmod_studio_bus_set_volume(bus_ref, volumen)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bus_get_volume","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} bus_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_bus_get_volume","help":"fmod_studio_bus_get_volume(bus_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bus_set_mute","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} bus_ref \n\r/// @param {real} mute \n\r/// @returns {real}\n\r","externalName":"fmod_studio_bus_set_mute","help":"fmod_studio_bus_set_mute(bus_ref, mute)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bus_get_mute","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} bus_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_bus_get_mute","help":"fmod_studio_bus_get_mute(bus_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bus_set_port_index_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} bus_ref \r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_bus_set_port_index_multiplatform","help":"fmod_studio_bus_set_port_index_multiplatform(bus_ref, buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bus_get_port_index_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} bus_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_bus_get_port_index_multiplatform","help":"fmod_studio_bus_get_port_index_multiplatform(bus_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bus_get_channel_group","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} bus_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_bus_get_channel_group","help":"fmod_studio_bus_get_channel_group(bus_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bus_lock_channel_group","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} bus_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_bus_lock_channel_group","help":"fmod_studio_bus_lock_channel_group(bus_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bus_unlock_channel_group","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} bus_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_bus_unlock_channel_group","help":"fmod_studio_bus_unlock_channel_group(bus_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bus_get_cpu_usage_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} bus_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_bus_get_cpu_usage_multiplatform","help":"fmod_studio_bus_get_cpu_usage_multiplatform(bus_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bus_get_memory_usage_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\n\r/// @param {real} bus_ref \n\r/// @param {Pointer} buff_return \n\r/// @returns {real}\n\r","externalName":"fmod_studio_bus_get_memory_usage_multiplatform","help":"fmod_studio_bus_get_memory_usage(bus_ref, buff_return)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bus_get_id","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} bus_ref \n\r/// @returns {string}\n\r","externalName":"fmod_studio_bus_get_id","help":"fmod_studio_bus_get_id(bus_ref)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bus_get_path","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} bus_ref \n\r/// @returns {string}\n\r","externalName":"fmod_studio_bus_get_path","help":"fmod_studio_bus_get_path(bus_ref)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_bus_is_valid","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} bus_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_studio_bus_is_valid","help":"fmod_studio_bus_is_valid(bus_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_command_replay_set_bank_path","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\n\r/// @param {real} command_replay_ref \n\r/// @param {string} path \n\r/// @returns {real}\n\r","externalName":"fmod_studio_command_replay_set_bank_path","help":"fmod_studio_command_replay_set_bank_path(command_replay_ref, path)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_command_replay_set_create_instance_callback","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} command_replay_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_command_replay_set_create_instance_callback","help":"fmod_studio_command_replay_set_create_instance_callback(command_replay_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_command_replay_set_frame_callback","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} command_replay_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_command_replay_set_frame_callback","help":"fmod_studio_command_replay_set_frame_callback(command_replay_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_command_replay_set_load_bank_callback","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\n\r/// @param {real} command_replay_ref \n\r/// @param {string} path \n\r/// @returns {real}\n\r","externalName":"fmod_studio_command_replay_set_load_bank_callback","help":"fmod_studio_command_replay_set_load_bank_callback(command_replay_ref, path)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_command_replay_start","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} command_replay_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_command_replay_start","help":"fmod_studio_command_replay_start(command_replay_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_command_replay_stop","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} command_replay_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_command_replay_stop","help":"fmod_studio_command_replay_stop(command_replay_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_command_replay_get_current_command_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} command_replay_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_command_replay_get_current_command_multiplatform","help":"fmod_studio_command_replay_get_current_command_multiplatform(command_replay_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_command_replay_get_playback_state","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} command_replay_ref \r\n/// @returns {enum.FMOD_STUDIO_PLAYBACK_STATE}\r\n","externalName":"fmod_studio_command_replay_get_playback_state","help":"fmod_studio_command_replay_get_playback_state(command_replay_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_command_replay_set_paused","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} command_replay_ref \r\n/// @param {bool} pause \r\n/// @returns {real}\r\n","externalName":"fmod_studio_command_replay_set_paused","help":"fmod_studio_command_replay_set_paused(command_replay_ref, pause)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_command_replay_get_paused","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} command_replay_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_studio_command_replay_get_paused","help":"fmod_studio_command_replay_get_paused(command_replay_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_command_replay_seek_to_command","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} command_replay_ref \n\r/// @param {real} command_index \n\r/// @returns {real}\n\r","externalName":"fmod_studio_command_replay_seek_to_command","help":"fmod_studio_command_replay_seek_to_command(command_replay_ref, command_index)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_command_replay_seek_to_time","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} command_replay_ref \n\r/// @param {real} time \n\r/// @returns {real}\n\r","externalName":"fmod_studio_command_replay_seek_to_time","help":"fmod_studio_command_replay_seek_to_time(command_replay_ref, time)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_command_replay_get_command_at_time","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} command_replay_ref \n\r/// @param {real} time \n\r/// @returns {real}\n\r","externalName":"fmod_studio_command_replay_get_command_at_time","help":"fmod_studio_command_replay_get_command_at_time(command_replay_ref, time)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_command_replay_get_command_count","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} command_replay_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_command_replay_get_command_count","help":"fmod_studio_command_replay_get_command_count(command_replay_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_command_replay_get_command_info_multiplatform","argCount":0,"args":[
            2,
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} command_replay_ref \r\n/// @param {real} command_index \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_command_replay_get_command_info_multiplatform","help":"fmod_studio_command_replay_get_command_info_multiplatform(command_replay_ref, command_index, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_command_replay_get_command_string","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} command_replay_ref \n\r/// @param {real} command_index \n\r/// @returns {string}\n\r","externalName":"fmod_studio_command_replay_get_command_string","help":"fmod_studio_command_replay_get_command_string(command_replay_ref, command_index)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_command_replay_get_length","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} command_replay_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_command_replay_get_length","help":"fmod_studio_command_replay_get_length(command_replay_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_command_replay_get_system_object","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} command_replay_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_command_replay_get_system_object","help":"fmod_studio_command_replay_get_system_object(command_replay_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_command_replay_is_valid","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} command_replay_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_studio_command_replay_is_valid","help":"fmod_studio_command_replay_is_valid(command_replay_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_command_replay_set_user_data","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} command_replay_ref \n\r/// @param {real} data \n\r/// @returns {real}\n\r","externalName":"fmod_studio_command_replay_set_user_data","help":"fmod_studio_command_replay_set_user_data(command_replay_ref, data)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_command_replay_get_user_data","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} command_replay_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_command_replay_get_user_data","help":"fmod_studio_command_replay_get_user_data(command_replay_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_command_replay_release","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} command_replay_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_command_replay_release","help":"fmod_studio_command_replay_release(command_replay_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_create_instance","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_description_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_description_create_instance","help":"fmod_studio_event_description_create_instance(event_description_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_get_instance_count","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_description_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_description_get_instance_count","help":"fmod_studio_event_description_get_instance_count(event_description_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_get_instance_list_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\n\r/// @param {real} event_description_ref \n\r/// @param {Pointer} buff_return \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_description_get_instance_list_multiplatform","help":"fmod_studio_event_description_get_instance_list(event_description_ref, buff_return)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_release_all_instances","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_description_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_description_release_all_instances","help":"fmod_studio_event_description_release_all_instances(event_description_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_load_sample_data","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_description_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_description_load_sample_data","help":"fmod_studio_event_description_load_sample_data(event_description_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_unload_sample_data","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_description_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_description_unload_sample_data","help":"fmod_studio_event_description_unload_sample_data(event_description_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_get_sample_loading_state","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} event_description_ref \r\n/// @returns {enum.FMOD_STUDIO_LOADING_STATE}\r\n","externalName":"fmod_studio_event_description_get_sample_loading_state","help":"fmod_studio_event_description_get_sample_loading_state(event_description_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_is_3d","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} event_description_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_studio_event_description_is_3d","help":"fmod_studio_event_description_is_3d(event_description_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_is_doppler_enabled","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} event_description_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_studio_event_description_is_doppler_enabled","help":"fmod_studio_event_description_is_doppler_enabled(event_description_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_is_oneshot","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} event_description_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_studio_event_description_is_oneshot","help":"fmod_studio_event_description_is_oneshot(event_description_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_is_snapshot","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} event_description_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_studio_event_description_is_snapshot","help":"fmod_studio_event_description_is_snapshot(event_description_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_is_stream","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} event_description_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_studio_event_description_is_stream","help":"fmod_studio_event_description_is_stream(event_description_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_has_sustain_point","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} event_description_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_studio_event_description_has_sustain_point","help":"fmod_studio_event_description_has_sustain_point(event_description_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_get_min_max_distance_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} event_description_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_event_description_get_min_max_distance_multiplatform","help":"fmod_studio_event_description_get_min_max_distance_multiplatform(event_description_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_get_sound_size","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_description_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_description_get_sound_size","help":"fmod_studio_event_description_get_sound_size(event_description_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_get_parameter_description_by_name_multiplatform","argCount":0,"args":[
            2,
            1,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} event_description_ref \r\n/// @param {string} name \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_event_description_get_parameter_description_by_name_multiplatform","help":"fmod_studio_event_description_get_parameter_description_by_name_multiplatform(event_description_ref, name, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_get_parameter_description_by_id_multiplatform","argCount":0,"args":[
            2,
            1,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} event_description_ref \r\n/// @param {Pointer} buff_args \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_event_description_get_parameter_description_by_id_multiplatform","help":"fmod_studio_event_description_get_parameter_description_by_id_multiplatform(event_description_ref, buff_args, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_get_parameter_description_by_index_multiplatform","argCount":0,"args":[
            2,
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} event_description_ref \r\n/// @param {real} index \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_event_description_get_parameter_description_by_index_multiplatform","help":"fmod_studio_event_description_get_parameter_description_by_index_multiplatform(event_description_ref, index, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_get_parameter_description_count","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_description_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_description_get_parameter_description_count","help":"fmod_studio_event_description_get_parameter_description_count(event_description_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_get_parameter_label_by_name","argCount":0,"args":[
            2,
            1,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_description_ref \n\r/// @param {string} name \n\r/// @param {real} label_index \n\r/// @returns {string}\n\r","externalName":"fmod_studio_event_description_get_parameter_label_by_name","help":"fmod_studio_event_description_get_parameter_label_by_name(event_description_ref, name, label_index)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_get_parameter_label_by_id_multiplatform","argCount":0,"args":[
            2,
            1,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} event_description_ref \r\n/// @param {Pointer} buff_args \r\n/// @param {real} label_index \r\n/// @returns {string}\r\n/// @ignore\r\n","externalName":"fmod_studio_event_description_get_parameter_label_by_id_multiplatform","help":"fmod_studio_event_description_get_parameter_label_by_id_multiplatform(event_description_ref, buff_args, label_index)","hidden":true,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_get_parameter_label_by_index","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_description_ref \n\r/// @param {real} index \n\r/// @param {real} label_index \n\r/// @returns {string}\n\r","externalName":"fmod_studio_event_description_get_parameter_label_by_index","help":"fmod_studio_event_description_get_parameter_label_by_index(event_description_ref, index, label_index)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_get_user_property_multiplatform","argCount":0,"args":[
            2,
            1,
            1,
          ],"documentation":"/// @desc\n\r/// @param {real} event_description_ref \n\r/// @param {string} name \n\r/// @param {Pointer} buff_return \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_description_get_user_property_multiplatform","help":"fmod_studio_event_description_get_user_property_multiplatform(event_description_ref, name, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_get_user_property_by_index_multiplatform","argCount":0,"args":[
            2,
            2,
            1,
          ],"documentation":"/// @desc\n\r/// @param {real} event_description_ref \n\r/// @param {real} index \n\r/// @param {Pointer} buff_return \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_description_get_user_property_by_index_multiplatform","help":"fmod_studio_event_description_get_user_property_by_index_multiplatform(event_description_ref, index, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_get_user_property_count","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_description_ref \n\r/// @param {string} name \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_description_get_user_property_count","help":"fmod_studio_event_description_get_user_property_count(event_description_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_get_id","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_description_ref \n\r/// @returns {string}\n\r","externalName":"fmod_studio_event_description_get_id","help":"fmod_studio_event_description_get_id(event_description_ref)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_get_length","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_description_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_description_get_length","help":"fmod_studio_event_description_get_length(event_description_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_get_path","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_description_ref \n\r/// @returns {string}\n\r","externalName":"fmod_studio_event_description_get_path","help":"fmod_studio_event_description_get_path(event_description_ref)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_set_callback","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} event_description_ref \r\n/// @param {enum.FMOD_STUDIO_EVENT_CALLBACK} type \r\n/// @returns {real}\r\n","externalName":"fmod_studio_event_description_set_callback","help":"fmod_studio_event_description_set_callback(event_description_ref, type)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_set_user_data","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_description_ref \n\r/// @param {real} data \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_description_set_user_data","help":"fmod_studio_event_description_set_user_data(event_description_ref, data)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_get_user_data","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_description_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_description_get_user_data","help":"fmod_studio_event_description_get_user_data(event_description_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_description_is_valid","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} event_description_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_studio_event_description_is_valid","help":"fmod_studio_event_description_is_valid(event_description_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_start","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_instance_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_instance_start","help":"fmod_studio_event_instance_start(event_instance_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_stop","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} event_instance_ref \r\n/// @param {enum.FMOD_STUDIO_STOP_MODE} mode \r\n/// @returns {real}\r\n","externalName":"fmod_studio_event_instance_stop","help":"fmod_studio_event_instance_stop(event_instance_ref, mode)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_get_playback_state","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} event_instance_ref \r\n/// @returns {enum.FMOD_STUDIO_PLAYBACK_STATE}\r\n","externalName":"fmod_studio_event_instance_get_playback_state","help":"fmod_studio_event_instance_get_playback_state(event_instance_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_set_paused","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} event_instance_ref \r\n/// @param {bool} pause \r\n/// @returns {real}\r\n","externalName":"fmod_studio_event_instance_set_paused","help":"fmod_studio_event_instance_set_paused(event_instance_ref, pause)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_get_paused","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} event_instance_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_studio_event_instance_get_paused","help":"fmod_studio_event_instance_get_paused(event_instance_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_keyoff","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_instance_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_instance_keyoff","help":"fmod_studio_event_instance_keyoff(event_instance_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_set_pitch","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_instance_ref \n\r/// @param {real} pitch \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_instance_set_pitch","help":"fmod_studio_event_instance_set_pitch(event_instance_ref, pitch)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_get_pitch","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_instance_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_instance_get_pitch","help":"fmod_studio_event_instance_get_pitch(event_instance_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_set_property","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} event_instance_ref \r\n/// @param {enum.FMOD_STUDIO_EVENT_PROPERTY} property \r\n/// @param {real} value \r\n/// @returns {real}\r\n","externalName":"fmod_studio_event_instance_set_property","help":"fmod_studio_event_instance_set_property(event_instance_ref, property, value)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_get_property","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} event_instance_ref \r\n/// @param {enum.FMOD_STUDIO_EVENT_PROPERTY} property \r\n/// @returns {real}\r\n","externalName":"fmod_studio_event_instance_get_property","help":"fmod_studio_event_get_property(event_instance_ref, property)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_set_timeline_position","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_instance_ref \n\r/// @param {real} position \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_instance_set_timeline_position","help":"fmod_studio_event_instance_set_timeline_position(event_instance_ref, position)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_get_timeline_position","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_instance_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_instance_get_timeline_position","help":"fmod_studio_event_instance_get_timeline_position(event_instance_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_set_volume","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_instance_ref \n\r/// @param {real} volume \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_instance_set_volume","help":"fmod_studio_event_instance_set_volume(event_instance_ref, volume)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_get_volume_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} event_instance_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_event_instance_get_volume_multiplatform","help":"fmod_studio_event_instance_get_volume_multiplatform(event_instance_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_is_virtual","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} event_instance_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_studio_event_instance_is_virtual","help":"fmod_studio_event_instance_is_virtual(event_instance_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_set_3d_attributes_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} event_instance_ref \r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_event_instance_set_3d_attributes_multiplatform","help":"fmod_studio_event_instance_set_3d_attributes_multiplatform(event_instance_ref, buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_get_3d_attributes_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} event_instance_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_event_instance_get_3d_attributes_multiplatform","help":"fmod_studio_event_instance_get_3d_attributes_multiplatform(event_instance_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_set_listener_mask","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_instance_ref \n\r/// @param {real} mask \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_instance_set_listener_mask","help":"fmod_studio_event_instance_set_listener_mask(event_instance_ref, mask)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_get_listener_mask","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_instance_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_instance_get_listener_mask","help":"fmod_studio_event_instance_get_listener_mask(event_instance_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_get_min_max_distance_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} event_instance_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_event_instance_get_min_max_distance_multiplatform","help":"fmod_studio_event_instance_get_min_max_distance_multiplatform(event_instance_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_set_parameter_by_name_multiplatform","argCount":0,"args":[
            2,
            1,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_instance_ref \n\r/// @param {string} name \n\r/// @param {real} value \n\r/// @param {real} ignore_seek_speed \n\r/// @returns {real}\n\r/// @ignore\n\r","externalName":"fmod_studio_event_instance_set_parameter_by_name_multiplatform","help":"fmod_studio_event_instance_set_parameter_by_name_multiplatform(event_instance_ref, name, value, ignore_seek_speed)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_set_parameter_by_name_with_label","argCount":0,"args":[
            2,
            1,
            1,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_instance_ref \n\r/// @param {string} name \n\r/// @param {string} label \n\r/// @param {real} ignore_seek_speed \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_instance_set_parameter_by_name_with_label","help":"fmod_studio_event_instance_set_parameter_by_name_with_label(event_instance_ref, name, label, ignore_seek_speed)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_get_parameter_by_name_multiplatform","argCount":0,"args":[
            2,
            1,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} event_instance_ref \r\n/// @param {string} name \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_event_instance_get_parameter_by_name_multiplatform","help":"fmod_studio_event_instance_get_parameter_by_name_multiplatform(event_instance_ref, name, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_set_parameter_by_id_multiplatform","argCount":0,"args":[
            2,
            1,
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} event_instance_ref \r\n/// @param {Pointer} buff_args \r\n/// @param {real} value \r\n/// @param {bool} ignore_seek_speed \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_event_instance_set_parameter_by_id_multiplatform","help":"fmod_studio_event_instance_set_parameter_by_id_multiplatform(event_instance_ref, buff_args, value, ignore_seek_speed)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_set_parameter_by_id_with_label_multiplatform","argCount":0,"args":[
            2,
            1,
            1,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} event_instance_ref \r\n/// @param {Pointer} buff_args \r\n/// @param {string} label \r\n/// @param {real} ignore_seek_speed \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_event_instance_set_parameter_by_id_with_label_multiplatform","help":"fmod_studio_event_instance_set_parameter_by_id_with_label_multiplatform(event_instance_ref, buff_args, label, ignore_seek_speed)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_get_parameter_by_id_multiplatform","argCount":0,"args":[
            2,
            1,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} event_instance_ref \r\n/// @param {Pointer} buff_args \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_event_instance_get_parameter_by_id_multiplatform","help":"fmod_studio_event_instance_get_parameter_by_id_multiplatform(event_instance_ref, buff_args, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_get_channel_group","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_instance_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_instance_get_channel_group","help":"fmod_studio_event_instance_get_channel_group(event_instance_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_set_reverb_level","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_instance_ref \n\r/// @param {real} index \n\r/// @param {real} level \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_instance_set_reverb_level","help":"fmod_studio_event_instance_set_reverb_level(event_instance_ref, index, level)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_get_reverb_level","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_instance_ref \n\r/// @param {real} index \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_instance_get_reverb_level","help":"fmod_studio_event_instance_get_reverb_level(event_instance_ref, index)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_get_cpu_usage_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} event_instance_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_event_instance_get_cpu_usage_multiplatform","help":"fmod_studio_event_instance_get_cpu_usage_multiplatform(event_instance_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_get_memory_usage_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} event_instance_ref \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_event_instance_get_memory_usage_multiplatform","help":"fmod_studio_event_instance_get_memory_usage_multiplatform(event_instance_ref, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_set_callback","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} event_instance_ref \r\n/// @param {enum.FMOD_STUDIO_EVENT_CALLBACK} type \r\n/// @returns {real}\r\n","externalName":"fmod_studio_event_instance_set_callback","help":"fmod_studio_event_instance_set_callback(event_instance_ref, type)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_set_user_data","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_instance_ref \n\r/// @param {real} data \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_instance_set_user_data","help":"fmod_studio_event_instance_set_user_data(event_instance_ref, data)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_get_user_data","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_instance_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_instance_get_user_data","help":"fmod_studio_event_instance_get_user_data(event_instance_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_get_description","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_instance_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_instance_get_description","help":"fmod_studio_event_instance_get_description(event_instance_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_release","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} event_instance_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_event_instance_release","help":"fmod_studio_event_instance_release(event_instance_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_event_instance_is_valid","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} event_instance_ref \r\n/// @returns {bool}\r\n","externalName":"fmod_studio_event_instance_is_valid","help":"fmod_studio_event_instance_is_valid(event_instance_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_create","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_create","help":"fmod_studio_system_create()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_init","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} max_channels \r\n/// @param {enum.FMOD_STUDIO_INIT} studio_flags \r\n/// @param {enum.FMOD_INIT} core_flags \r\n/// @returns {real}\r\n","externalName":"fmod_studio_system_init","help":"fmod_studio_system_init(max_channels, studio_flags, core_flags)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_release","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_release","help":"fmod_studio_system_release()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_update_multiplatform","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_update_multiplatform","help":"fmod_studio_system_update()","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_flush_commands","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_flush_commands","help":"fmod_studio_system_flush_commands()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_flush_sample_loading","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_flush_sample_loading","help":"fmod_studio_system_flush_sample_loading()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_load_bank_custom","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {enum.FMOD_STUDIO_LOAD_BANK} flags \r\n/// @returns {real}\r\n","externalName":"fmod_studio_system_load_bank_custom","help":"fmod_studio_system_load_bank_custom(flags)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_load_bank_file","argCount":0,"args":[
            1,
            2,
          ],"documentation":"/// @desc\r\n/// @param {string} filename \r\n/// @param {enum.FMOD_STUDIO_LOAD_BANK} flags \r\n/// @returns {real}\r\n","externalName":"fmod_studio_system_load_bank_file","help":"fmod_studio_system_load_bank_file(filename, flags)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_load_bank_memory_multiplatform","argCount":0,"args":[
            1,
            2,
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {Pointer} buff_data \r\n/// @param {real} length \r\n/// @param {enum.FMOD_STUDIO_LOAD_MEMORY_MODE} mode \r\n/// @param {enum.FMOD_STUDIO_LOAD_BANK} flags \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_system_load_bank_memory_multiplatform","help":"fmod_studio_system_load_bank_memory_multiplatform(buff_data, length, mode, flags)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_unload_all","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_unload_all","help":"fmod_studio_system_unload_all()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_bank","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\n\r/// @param {string} path \n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_get_bank","help":"fmod_studio_system_get_bank(path)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_bank_by_id","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\n\r/// @param {string} guid_str \n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_get_bank_by_id","help":"fmod_studio_system_get_bank_by_id(guid_str)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_bank_count","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_get_bank_count","help":"fmod_studio_system_get_bank_count()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_bank_list_multiplatform","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_system_get_bank_list_multiplatform","help":"fmod_studio_system_get_bank_list_multiplatform(buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_set_listener_attributes_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} listener_index \r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_system_set_listener_attributes_multiplatform","help":"fmod_studio_system_set_listener_attributes_multiplatform(listener_index, buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_listener_attributes_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} listener_index \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_system_get_listener_attributes_multiplatform","help":"fmod_studio_system_get_listener_attributes_multiplatform(listener_index, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_set_listener_weight","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} listener_index \n\r/// @param {real} weight \n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_set_listener_weight","help":"fmod_studio_system_set_listener_weight(listener_index, weight)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_listener_weight","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} listener_index \n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_get_listener_weight","help":"fmod_studio_system_get_listener_weight(listener_index)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_set_num_listeners","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} num \n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_set_num_listeners","help":"fmod_studio_system_set_num_listeners(num)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_num_listeners","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_get_num_listeners","help":"fmod_studio_system_get_num_listeners()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_bus","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\n\r/// @param {string} path \n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_get_bus","help":"fmod_studio_system_get_bus(path)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_bus_by_id","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\n\r/// @param {string} guid \n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_get_bus_by_id","help":"fmod_studio_system_get_bus_by_id(guid)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_event","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\n\r/// @param {string} path \n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_get_event","help":"fmod_studio_system_get_event(path)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_event_by_id","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\n\r/// @param {string} guid_str \n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_get_event_by_id","help":"fmod_studio_system_get_event_by_id(guid_str)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_parameter_by_id_multiplatform","argCount":0,"args":[
            1,
            1,
          ],"documentation":"/// @desc\r\n/// @param {Pointer} buff_args \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_system_get_parameter_by_id_multiplatform","help":"fmod_studio_system_get_parameter_by_id_multiplatform(buff_args, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_set_parameter_by_id_multiplatform","argCount":0,"args":[
            1,
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {Pointer} buff_args \r\n/// @param {real} value \r\n/// @param {bool} ignore_seek_speed \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_system_set_parameter_by_id_multiplatform","help":"fmod_studio_system_set_parameter_by_id_multiplatform(buff_args, value, ignore_seek_speed)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_set_parameter_by_id_with_label_multiplatform","argCount":0,"args":[
            1,
            1,
            2,
          ],"documentation":"/// @desc\r\n/// @param {Pointer} buff_args \r\n/// @param {string} label \r\n/// @param {bool} ignore_seek_speed \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_system_set_parameter_by_id_with_label_multiplatform","help":"fmod_studio_system_set_parameter_by_id_with_label_multiplatform(buff_args, label, ignore_seek_speed)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_parameter_by_name_multiplatform","argCount":0,"args":[
            1,
            1,
          ],"documentation":"/// @desc\r\n/// @param {string} name \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_system_get_parameter_by_name_multiplatform","help":"fmod_studio_system_get_parameter_by_name_multiplatform(name, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_set_parameter_by_name_multiplatform","argCount":0,"args":[
            1,
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {string} name \r\n/// @param {real} value \r\n/// @param {bool} ignore_seek_speed \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_system_set_parameter_by_name_multiplatform","help":"fmod_studio_system_set_parameter_by_name_multiplatform(name, value, ignoreseekspeed)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_set_parameter_by_name_with_label_multiplatform","argCount":0,"args":[
            1,
            1,
            2,
          ],"documentation":"/// @desc\r\n/// @param {string} name \r\n/// @param {string} label \r\n/// @param {bool} ignore_seek_speed \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_system_set_parameter_by_name_with_label_multiplatform","help":"fmod_studio_system_set_parameter_by_name_with_label_multiplatform(name, label, ignoreseekspeed)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_parameter_description_by_name_multiplatform","argCount":0,"args":[
            1,
            1,
          ],"documentation":"/// @desc\r\n/// @param {string} name \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_system_get_parameter_description_by_name_multiplatform","help":"fmod_studio_system_get_parameter_description_by_name_multiplatform(name, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_parameter_description_by_id_multiplatform","argCount":0,"args":[
            1,
            1,
          ],"documentation":"/// @desc\r\n/// @param {Pointer} buff_args \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_system_get_parameter_description_by_id_multiplatform","help":"fmod_studio_system_get_parameter_description_by_id_multiplatform(buff_args, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_parameter_description_count","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_get_parameter_description_count","help":"fmod_studio_system_get_parameter_description_count()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_parameter_description_list_multiplatform","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_system_get_parameter_description_list_multiplatform","help":"fmod_studio_system_get_parameter_description_list_multiplatform(buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_parameter_label_by_name","argCount":0,"args":[
            1,
            2,
          ],"documentation":"/// @desc\n\r/// @param {string} name \n\r/// @param {real} labelindex \n\r/// @returns {string}\n\r","externalName":"fmod_studio_system_get_parameter_label_by_name","help":"fmod_studio_system_get_parameter_label_by_name(name, labelindex)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_parameter_label_by_id_multiplatform","argCount":0,"args":[
            1,
            2,
          ],"documentation":"/// @desc\r\n/// @param {Pointer} buff_args \r\n/// @param {real} label_index \r\n/// @returns {string}\r\n/// @ignore\r\n","externalName":"fmod_studio_system_get_parameter_label_by_id_multiplatform","help":"fmod_studio_system_get_parameter_label_by_id_multiplatform(buff_args, label_index)","hidden":true,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_vca","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\n\r/// @param {string} path \n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_get_vca","help":"fmod_studio_system_get_vca(path)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_vca_by_id","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\n\r/// @param {string} guid_str \n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_get_vca_by_id","help":"fmod_studio_system_get_vca_by_id(guid_str)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_set_advanced_settings_multiplatform","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_system_set_advanced_settings_multiplatform","help":"fmod_studio_system_set_advanced_settings_multiplatform(buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_advanced_settings_multiplatform","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_system_get_advanced_settings_multiplatform","help":"fmod_studio_system_get_advanced_settings_multiplatform(buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_start_command_capture","argCount":0,"args":[
            1,
            2,
          ],"documentation":"/// @desc\n\r/// @param {string} filename \n\r/// @param {real} flags \n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_start_command_capture","help":"fmod_studio_system_start_command_capture(filename, flags)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_stop_command_capture","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_stop_command_capture","help":"fmod_studio_system_stop_command_capture()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_load_command_replay","argCount":0,"args":[
            1,
            2,
          ],"documentation":"/// @desc\n\r/// @param {string} filename \n\r/// @param {real} flags \n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_load_command_replay","help":"fmod_studio_system_load_command_replay(filename, flags)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_buffer_usage_multiplatform","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_system_get_buffer_usage_multiplatform","help":"fmod_studio_system_get_buffer_usage_multiplatform(buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_reset_buffer_usage","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_reset_buffer_usage","help":"fmod_studio_system_reset_buffer_usage()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_cpu_usage_multiplatform","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_system_get_cpu_usage_multiplatform","help":"fmod_studio_system_get_cpu_usage_multiplatform(buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_memory_usage_multiplatform","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_system_get_memory_usage_multiplatform","help":"fmod_studio_system_get_memory_usage_multiplatform(buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_set_callback","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {enum.FMOD_STUDIO_SYSTEM_CALLBACK} type \r\n/// @returns {real}\r\n","externalName":"fmod_studio_system_set_callback","help":"fmod_studio_system_set_callback(type)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_set_user_data","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} data \n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_set_user_data","help":"fmod_studio_system_set_user_data(data)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_user_data","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_get_user_data","help":"fmod_studio_system_get_user_data()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_sound_info_multiplatform","argCount":0,"args":[
            1,
            1,
          ],"documentation":"/// @desc\r\n/// @param {string} key \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_studio_system_get_sound_info_multiplatform","help":"fmod_studio_system_get_sound_info_multiplatform(key, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_get_core_system","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_get_core_system","help":"fmod_studio_system_get_core_system()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_lookup_id","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\n\r/// @param {string} path \n\r/// @returns {string}\n\r","externalName":"fmod_studio_system_lookup_id","help":"fmod_studio_system_lookup_id(path)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_lookup_path","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\n\r/// @param {string} str_guid \n\r/// @returns {string}\n\r","externalName":"fmod_studio_system_lookup_path","help":"fmod_studio_system_lookup_path(str_guid)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_system_is_valid","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_studio_system_is_valid","help":"fmod_studio_system_is_valid()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_vca_set_volume","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} vca_ref \n\r/// @param {real} volume \n\r/// @returns {real}\n\r","externalName":"fmod_studio_vca_set_volume","help":"fmod_studio_vca_set_volume(vca_ref, volume)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_vca_get_volume","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} vca_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_vca_get_volume","help":"fmod_studio_vca_get_volume(vca_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_vca_get_id","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} vca_ref \n\r/// @returns {string}\n\r","externalName":"fmod_studio_vca_get_id","help":"fmod_studio_vca_get_id(vca_ref)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_vca_get_path","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} vca_ref \n\r/// @returns {string}\n\r","externalName":"fmod_studio_vca_get_path","help":"fmod_studio_vca_get_path(vca_ref)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_studio_vca_is_valid","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} vca_ref \n\r/// @returns {real}\n\r","externalName":"fmod_studio_vca_is_valid","help":"fmod_studio_vca_is_valid(vca_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_create","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_system_create","help":"fmod_system_create()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_select","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} system_ref \n\r/// @returns {real}\n\r","externalName":"fmod_system_select","help":"fmod_system_select(system_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_count","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_system_count","help":"fmod_system_count()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_init","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} max_channels \r\n/// @param {enum.FMOD_INIT} flags \r\n/// @returns {real}\r\n","externalName":"fmod_system_init","help":"fmod_system_init(max_channels, flags)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_release","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} system_ref \n\r/// @returns {real}\n\r","externalName":"fmod_system_release","help":"fmod_system_release(system_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_close","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} system_ref \n\r/// @returns {real}\n\r","externalName":"fmod_system_close","help":"fmod_system_close(system_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_update_multiplatform","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r/// @ignore\n\r","externalName":"fmod_system_update_multiplatform","help":"fmod_system_update_multiplatform()","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_mixer_suspend","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_system_mixer_suspend","help":"fmod_system_mixer_suspend()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_mixer_resume","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_system_mixer_resume","help":"fmod_system_mixer_resume()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_set_output","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {enum.FMOD_OUTPUTTYPE} output \r\n/// @returns {real}\r\n","externalName":"fmod_system_set_output","help":"fmod_system_set_output(output)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_output","argCount":0,"args":[],"documentation":"/// @desc\r\n/// @returns {enum.FMOD_OUTPUTTYPE}\r\n","externalName":"fmod_system_get_output","help":"fmod_system_get_output()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_num_drivers","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_system_get_num_drivers","help":"fmod_system_get_num_drivers()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_driver_info_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} driver_index \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_system_get_driver_info_multiplatform","help":"fmod_system_get_driver_info_multiplatform(system_id, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_set_driver","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} driver \n\r/// @returns {real}\n\r","externalName":"fmod_system_set_driver","help":"fmod_system_set_driver(driver)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_driver","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_system_get_driver","help":"fmod_system_get_driver()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_set_software_channels","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} software_channels \n\r/// @returns {real}\n\r","externalName":"fmod_system_set_software_channels","help":"fmod_system_set_software_channels(software_channels)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_software_channels","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_system_get_software_channels","help":"fmod_system_get_software_channels()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_set_software_format","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} sample_rate \n\r/// @param {real} speaker_mode \n\r/// @param {real} num_raw_speakers \n\r/// @returns {real}\n\r","externalName":"fmod_system_set_software_format","help":"fmod_system_set_software_format(sample_rate, speaker_mode, num_raw_speakers)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_software_format_multiplatform","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_system_get_software_format_multiplatform","help":"fmod_system_get_software_format_multiplatform(buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_set_dsp_buffer_size","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} buff_size \n\r/// @param {real} num_buffers \n\r/// @returns {real}\n\r","externalName":"fmod_system_set_dsp_buffer_size","help":"fmod_system_set_dsp_buffer_size(buff_size, num_buffers)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_dsp_buffer_size_multiplatform","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_system_get_dsp_buffer_size_multiplatform","help":"fmod_system_get_dsp_buffer_size_multiplatform(buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_set_stream_buffer_size","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} file_buffer_size \n\r/// @param {real} file_buffer_size_type \n\r/// @returns {real}\n\r","externalName":"fmod_system_set_stream_buffer_size","help":"fmod_system_set_stream_buffer_size(file_buffer_size, file_buffer_size_type)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_stream_buffer_size_multiplatform","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_system_get_stream_buffer_size_multiplatform","help":"fmod_system_get_stream_buffer_size_multiplatform(buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_set_advanced_settings_multiplatform","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_system_set_advanced_settings_multiplatform","help":"fmod_system_set_advanced_settings_multiplatform(buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_advanced_settings_multiplatform","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_system_get_advanced_settings_multiplatform","help":"fmod_system_get_advanced_settings_multiplatform(buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_set_speaker_position","argCount":0,"args":[
            2,
            2,
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {enum.FMOD_SPEAKER} speaker \r\n/// @param {real} x \r\n/// @param {real} y \r\n/// @param {real} active \r\n/// @returns {real}\r\n","externalName":"fmod_system_set_speaker_position","help":"fmod_system_set_speaker_position(speaker, x, y, active)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_speaker_position_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {enum.FMOD_SPEAKER} speaker \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_system_get_speaker_position_multiplatform","help":"fmod_system_get_speaker_position_multiplatform(speaker, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_set_3d_settings","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} doppler_scale \n\r/// @param {real} distance_factor \n\r/// @param {real} rolloff_scale \n\r/// @returns {real}\n\r","externalName":"fmod_system_set_3d_settings","help":"fmod_system_set_3d_settings(doppler_scale, distance_factor, rolloff_scale)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_3d_settings_multiplatform","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_system_get_3d_settings_multiplatform","help":"fmod_system_get_3d_settings_multiplatform(buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_set_3d_num_listeners","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} num \n\r/// @returns {real}\n\r","externalName":"fmod_system_set_3d_num_listeners","help":"fmod_system_set_3d_num_listeners(num)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_3d_num_listeners","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_system_get_3d_num_listeners","help":"fmod_system_get_3d_num_listeners()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_set_3d_rolloff_callback","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_system_set_3d_rolloff_callback","help":"fmod_system_set_3d_rolloff_callback()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_set_network_proxy","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\n\r/// @param {string} proxy \n\r/// @returns {real}\n\r","externalName":"fmod_system_set_network_proxy","help":"fmod_system_set_network_proxy(proxy)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_network_proxy","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {string}\n\r","externalName":"fmod_system_get_network_proxy","help":"fmod_system_get_network_proxy()","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_set_network_timeout","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} timeout \n\r/// @returns {real}\n\r","externalName":"fmod_system_set_network_timeout","help":"fmod_system_set_network_timeout(timeout)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_network_timeout","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_system_get_network_timeout","help":"fmod_system_get_network_timeout()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_version","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_system_get_version","help":"fmod_system_get_version()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_channels_playing_multiplatform","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_system_get_channels_playing_multiplatform","help":"fmod_system_get_channels_playing_multiplatform(buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_cpu_usage_multiplatform","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_system_get_cpu_usage_multiplatform","help":"fmod_system_get_cpu_usage_multiplatform(buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_file_usage_multiplatform","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_system_get_file_usage_multiplatform","help":"fmod_system_get_file_usage_multiplatform(buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_default_mix_matrix_multiplatform","argCount":0,"args":[
            2,
            2,
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {enum.FMOD_SPEAKERMODE} source_speaker_mode \r\n/// @param {enum.FMOD_SPEAKERMODE} target_speaker_mode \r\n/// @param {real} matrix_hop\r\n/// @param {Pointer} buff_return\r\n/// @returns {real}\r\n","externalName":"fmod_system_get_default_mix_matrix_multiplatform","help":"fmod_system_get_default_mix_matrix_multiplatform(source_speaker_mode, target_speaker_mode, matrix_hop, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_speaker_mode_channels","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {enum.FMOD_SPEAKERMODE} mode \r\n/// @returns {real}\r\n","externalName":"fmod_system_get_speaker_mode_channels","help":"fmod_system_get_speaker_mode_channels(mode)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_create_sound_multiplatform","argCount":0,"args":[
            1,
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {string} name_or_data \r\n/// @param {real} mode \r\n/// @param {Pointer} buff_extra \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_system_create_sound_multiplatform","help":"fmod_system_create_sound_multiplatform(name_or_data, mode, buff_extra)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_create_stream_multiplatform","argCount":0,"args":[
            1,
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {string} name_or_data \r\n/// @param {real} mode \r\n/// @param {Pointer} buff_extra \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_system_create_stream_multiplatform","help":"fmod_system_create_stream_multiplatform(name_or_data, mode, buff_extra)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_create_dsp","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_system_create_dsp","help":"fmod_system_create_dsp()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_create_dsp_by_type","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {enum.FMOD_DSP_TYPE} type \r\n/// @returns {real}\r\n","externalName":"fmod_system_create_dsp_by_type","help":"fmod_system_create_dsp_by_type(type)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_create_channel_group","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\n\r/// @param {string} name \n\r/// @returns {real}\n\r","externalName":"fmod_system_create_channel_group","help":"fmod_system_create_channel_group(name)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_create_sound_group","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\n\r/// @param {string} name \n\r/// @returns {real}\n\r","externalName":"fmod_system_create_sound_group","help":"fmod_system_create_sound_group(name)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_create_reverb_3d","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_system_create_reverb_3d","help":"fmod_system_create_reverb_3d()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_play_sound_multiplatform","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} sound_ref \r\n/// @param {real} channel_group_ref \r\n/// @param {bool} pause \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_system_play_sound_multiplatform","help":"fmod_system_play_sound_multiplatform(sound_ref, channel_group_ref, pause)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_play_dsp_multiplatform","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} dsp_ref \r\n/// @param {real} channel_group_ref \r\n/// @param {bool} pause \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_system_play_dsp_multiplatform","help":"fmod_system_play_dsp_multiplatform(dsp_ref, channel_group_ref, pause)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_channel","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} index \n\r/// @returns {real}\n\r","externalName":"fmod_system_get_channel","help":"fmod_system_get_channel(index)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_master_channel_group","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_system_get_master_channel_group","help":"fmod_system_get_master_channel_group()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_master_sound_group","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_system_get_master_sound_group","help":"fmod_system_get_master_sound_group()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_set_3d_listener_attributes_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} listener_index \r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_system_set_3d_listener_attributes_multiplatform","help":"fmod_system_set_3d_listener_attributes_multiplatform(listener_index, buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_3d_listener_attributes_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} listener_index \r\n/// @param {Pointer} buff_return \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_system_get_3d_listener_attributes_multiplatform","help":"fmod_system_get_3d_listener_attributes_multiplatform(listener_index, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_set_reverb_properties_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\r\n/// @param {real} instance_index \r\n/// @param {Pointer} buff_args \r\n/// @returns {real}\r\n/// @ignore\r\n","externalName":"fmod_system_set_reverb_properties_multiplatform","help":"fmod_system_set_reverb_properties_multiplatform(instance_index, buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_reverb_properties_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\n\r/// @param {real} instance_index \n\r/// @param {Pointer} buff_return \n\r/// @returns {real}\n\r/// @ignore\n\r","externalName":"fmod_system_get_reverb_properties_multiplatform","help":"fmod_system_get_reverb_properties_multiplatform(instance_index, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_attach_channel_group_to_port_multiplatform","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\n\r/// @param {Pointer} buff_args \n\r/// @returns {real}\n\r/// @ignore\n\r","externalName":"fmod_system_attach_channel_group_to_port_multiplatform","help":"fmod_system_attach_channel_group_to_port_multiplatform(buff_args)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_detach_channel_group_from_port","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_group_ref \n\r/// @returns {real}\n\r","externalName":"fmod_system_detach_channel_group_from_port","help":"fmod_system_detach_channel_group_from_port(channel_group_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_record_num_drivers_multiplatform","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\n\r/// @param {Pointer} buff_return \n\r/// @returns {real}\n\r/// @ignore\n\r","externalName":"fmod_system_get_record_num_drivers_multiplatform","help":"fmod_system_get_record_num_drivers_multiplatform(buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_record_driver_info_multiplatform","argCount":0,"args":[
            2,
            1,
          ],"documentation":"/// @desc\n\r/// @param {real} recording_device_index \n\r/// @param {Pointer} buff_return \n\r/// @returns {real}\n\r/// @ignore\n\r","externalName":"fmod_system_get_record_driver_info_multiplatform","help":"fmod_system_get_record_driver_info_multiplatform(recording_device_index, buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_record_position","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} device_index \n\r/// @returns {real}\n\r","externalName":"fmod_system_get_record_position","help":"fmod_system_get_record_position(device_index)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_record_start","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} device_index \r\n/// @param {real} sound_ref \r\n/// @param {bool} loop \r\n/// @returns {real}\r\n","externalName":"fmod_system_record_start","help":"fmod_system_record_start(device_index, sound_ref, loop)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_record_stop","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} device_index \n\r/// @returns {real}\n\r","externalName":"fmod_system_record_stop","help":"fmod_system_record_stop(device_index)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_is_recording","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {real} device_index \r\n/// @returns {bool}\r\n","externalName":"fmod_system_is_recording","help":"fmod_system_is_recording(device_index)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_create_geometry","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} max_polygons \n\r/// @param {real} max_vertices \n\r/// @returns {real}\n\r","externalName":"fmod_system_create_geometry","help":"fmod_system_create_geometry(max_polygons, max_vertices)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_set_geometry_settings","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} max_world_size \n\r/// @returns {real}\n\r","externalName":"fmod_system_set_geometry_settings","help":"fmod_system_set_geometry_settings(max_world_size)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_geometry_settings","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_system_get_geometry_settings","help":"fmod_system_get_geometry_settings()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_load_geometry_multiplatform","argCount":0,"args":[
            1,
            2,
          ],"documentation":"/// @desc\r\n/// @param {Pointer} buff_args\r\n/// @param {real} length \r\n/// @returns {real}\r\n","externalName":"fmod_system_load_geometry_multiplatform","help":"fmod_system_load_geometry_multiplatform(buff_args, length)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_geometry_occlusion_multiplatform","argCount":0,"args":[
            1,
          ],"documentation":"/// @desc\n\r/// @param {Pointer} buff_return \n\r/// @returns {real}\n\r/// @ignore\n\r","externalName":"fmod_system_get_geometry_occlusion_multiplatform","help":"fmod_system_get_geometry_occlusion_multiplatform(buff_return)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_lock_dsp","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_system_lock_dsp","help":"fmod_system_lock_dsp()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_unlock_dsp","argCount":0,"args":[],"documentation":"/// @desc\n\r/// @returns {real}\n\r","externalName":"fmod_system_unlock_dsp","help":"fmod_system_unlock_dsp()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_set_callback","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\r\n/// @param {enum.FMOD_SYSTEM_CALLBACK} type \r\n/// @returns {real}\r\n","externalName":"fmod_system_set_callback","help":"fmod_system_set_callback(type)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_set_user_data","argCount":0,"args":[
            2,
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @param {real} data \n\r/// @returns {real}\n\r","externalName":"fmod_system_set_user_data","help":"fmod_system_set_user_data(channel_control_ref, data)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_system_get_user_data","argCount":0,"args":[
            2,
          ],"documentation":"/// @desc\n\r/// @param {real} channel_control_ref \n\r/// @returns {real}\n\r","externalName":"fmod_system_get_user_data","help":"fmod_system_get_user_data(channel_control_ref)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_fetch_callbacks","argCount":0,"args":[
            1,
            2,
          ],"documentation":"/// @desc\n\r/// @param {Pointer} buffer \n\r/// @param {real} length \n\r/// @returns {real}\n\r","externalName":"fmod_fetch_callbacks","help":"fmod_internal_callback_get(buffer, length)","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fmod_last_result","argCount":0,"args":[],"documentation":"/// @desc\r\n/// @returns {enum.FMOD_RESULT}\r\n","externalName":"fmod_last_result","help":"fmod_last_result()","hidden":false,"kind":1,"returnType":2,},
      ],"init":"","kind":1,"order":[
        {"name":"fmod_channel_set_frequency","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_get_frequency","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_set_priority","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_get_priority","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_set_position","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_get_position","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_set_channel_group","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_get_channel_group","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_set_loop_count","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_get_loop_count","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_set_loop_points","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_get_loop_points_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_is_virtual","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_get_current_sound","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_get_index","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_is_playing","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_stop","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_paused","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_paused","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_mode","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_mode","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_pitch","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_pitch","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_audibility","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_volume","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_volume","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_volume_ramp","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_volume_ramp","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_mute","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_mute","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_3d_attributes_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_3d_attributes_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_3d_cone_orientation_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_3d_cone_orientation_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_3d_cone_settings","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_3d_cone_settings_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_3d_custom_rolloff_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_3d_custom_rolloff_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_3d_distance_filter","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_3d_distance_filter_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_3d_doppler_level","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_3d_doppler_level","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_3d_level","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_3d_level","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_3d_min_max_distance","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_3d_min_max_distance_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_3d_occlusion","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_3d_occlusion_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_3d_spread","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_3d_spread","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_pan","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_mix_levels_input_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_mix_levels_output","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_mix_matrix_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_mix_matrix_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_reverb_properties","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_reverb_properties","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_low_pass_gain","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_low_pass_gain","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_add_dsp","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_remove_dsp","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_num_dsps","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_dsp","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_dsp_index","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_dsp_clock_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_delay_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_delay_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_add_fade_point_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_fade_point_ramp_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_remove_fade_points_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_get_fade_points_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_control_set_callback","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_group_get_num_channels","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_group_add_group_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_group_get_num_groups","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_group_get_group","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_group_get_parent_group","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_channel_group_release","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_file_get_disk_busy","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_file_set_disk_busy","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_memory_get_stats_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_debug_initialize_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_thread_set_attributes","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_add_input_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_get_input_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_get_output_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_get_num_inputs","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_get_num_outputs","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_disconnect_all","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_disconnect_from_mutliplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_get_data_parameter_index","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_get_num_parameters","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_set_parameter_bool","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_get_parameter_bool","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_set_parameter_data_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_get_parameter_data_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_set_parameter_float","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_get_parameter_float","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_set_parameter_int","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_get_parameter_int","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_get_parameter_info_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_set_channel_format","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_get_channel_format_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_get_output_channel_format_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_get_metering_info_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_set_metering_enabled","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_get_metering_enabled_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_set_active","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_get_active","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_set_bypass","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_get_bypass","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_set_wet_dry_mix","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_get_wet_dry_mix_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_get_idle","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_reset","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_release","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_get_type","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_get_info_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_get_cpu_usage_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_set_callback","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_connection_set_mix","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_connection_get_mix","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_connection_set_mix_matrix_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_connection_get_mix_matrix_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_connection_get_input","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_connection_get_output","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_dsp_connection_get_type","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_geometry_set_polygon_attributes","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_geometry_get_polygon_attributes_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_geometry_get_polygon_num_vertices","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_geometry_set_polygon_vertex_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_geometry_get_polygon_vertex_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_geometry_set_position_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_geometry_get_position_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_geometry_set_rotation_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_geometry_get_rotation_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_geometry_set_scale_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_geometry_get_scale_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_geometry_add_polygon_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_geometry_set_active","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_geometry_get_active","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_geometry_get_max_polygons_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_geometry_get_num_polygons","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_geometry_release","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_geometry_save_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_reverb_3d_set_3d_attributes_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_reverb_3d_get_3d_attributes_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_reverb_3d_set_properties","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_reverb_3d_get_properties_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_reverb_3d_set_active","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_reverb_3d_get_active","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_reverb_3d_release","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_get_format_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_get_length","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_get_num_tags_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_get_tag_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_set_3d_cone_settings","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_get_3d_cone_settings_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_set_3d_custom_rolloff_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_get_3d_custom_rolloff_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_set_3d_min_max_distance","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_get_3d_min_max_distance_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_set_defaults","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_get_defaults_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_set_mode","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_get_mode","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_set_loop_count","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_get_loop_count","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_set_loop_points","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_get_loop_points_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_set_sound_group","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_get_sound_group","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_get_num_sub_sounds","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_get_sub_sound","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_get_sub_sound_parent","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_get_open_state_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_read_data_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_seek_data","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_lock_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_unlock_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_get_music_num_channels","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_set_music_channel_volume","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_get_music_channel_volume","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_set_music_speed","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_get_music_speed","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_get_sync_point_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_get_num_sync_points","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_add_sync_point","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_delete_sync_point","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_release","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_group_set_max_audible","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_group_get_max_audible","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_group_set_max_audible_behavior","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_group_get_max_audible_behavior","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_group_set_mute_fade_speed","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_group_get_mute_fade_speed","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_group_set_volume","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_group_get_volume","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_sound_group_release","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bank_get_loading_state","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bank_load_sample_data","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bank_unload_sample_data","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bank_get_sample_loading_state","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bank_unload","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bank_get_bus_count","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bank_get_bus_list_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bank_get_event_count","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bank_get_event_description_list_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bank_get_string_count","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bank_get_string_info_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bank_get_vca_count","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bank_get_vca_list_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bank_get_id","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bank_get_path","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bank_is_valid","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bus_set_paused","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bus_get_paused","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bus_stop_all_events","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bus_set_volume","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bus_get_volume","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bus_set_mute","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bus_get_mute","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bus_set_port_index_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bus_get_port_index_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bus_get_channel_group","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bus_lock_channel_group","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bus_unlock_channel_group","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bus_get_cpu_usage_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bus_get_memory_usage_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bus_get_id","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bus_get_path","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_bus_is_valid","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_command_replay_set_bank_path","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_command_replay_set_create_instance_callback","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_command_replay_set_frame_callback","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_command_replay_set_load_bank_callback","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_command_replay_start","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_command_replay_stop","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_command_replay_get_current_command_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_command_replay_get_playback_state","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_command_replay_set_paused","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_command_replay_get_paused","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_command_replay_seek_to_command","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_command_replay_seek_to_time","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_command_replay_get_command_at_time","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_command_replay_get_command_count","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_command_replay_get_command_info_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_command_replay_get_command_string","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_command_replay_get_length","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_command_replay_is_valid","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_command_replay_release","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_create_instance","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_get_instance_count","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_get_instance_list_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_release_all_instances","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_load_sample_data","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_unload_sample_data","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_get_sample_loading_state","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_is_3d","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_is_doppler_enabled","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_is_oneshot","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_is_snapshot","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_is_stream","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_has_sustain_point","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_get_min_max_distance_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_get_sound_size","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_get_parameter_description_by_name_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_get_parameter_description_by_id_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_get_parameter_description_by_index_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_get_parameter_description_count","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_get_parameter_label_by_name","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_get_parameter_label_by_id_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_get_parameter_label_by_index","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_get_user_property_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_get_user_property_by_index_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_get_user_property_count","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_get_id","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_get_length","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_get_path","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_set_callback","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_description_is_valid","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_start","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_stop","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_get_playback_state","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_set_paused","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_get_paused","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_keyoff","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_set_pitch","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_get_pitch","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_set_property","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_get_property","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_set_timeline_position","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_get_timeline_position","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_set_volume","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_get_volume_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_is_virtual","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_set_3d_attributes_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_get_3d_attributes_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_set_listener_mask","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_get_listener_mask","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_get_min_max_distance_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_set_parameter_by_name_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_set_parameter_by_name_with_label","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_get_parameter_by_name_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_set_parameter_by_id_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_set_parameter_by_id_with_label_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_get_parameter_by_id_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_set_reverb_level","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_get_reverb_level","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_get_cpu_usage_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_get_memory_usage_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_set_callback","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_get_description","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_release","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_event_instance_is_valid","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_create","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_init","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_release","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_update_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_flush_commands","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_flush_sample_loading","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_load_bank_custom","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_load_bank_file","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_load_bank_memory_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_unload_all","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_bank","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_bank_by_id","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_bank_count","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_bank_list_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_set_listener_attributes_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_listener_attributes_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_set_listener_weight","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_listener_weight","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_set_num_listeners","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_num_listeners","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_bus","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_event","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_event_by_id","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_parameter_by_id_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_set_parameter_by_id_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_set_parameter_by_id_with_label_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_parameter_by_name_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_set_parameter_by_name_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_set_parameter_by_name_with_label_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_parameter_description_by_name_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_parameter_description_by_id_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_parameter_description_count","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_parameter_description_list_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_parameter_label_by_name","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_parameter_label_by_id_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_vca","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_vca_by_id","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_set_advanced_settings_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_advanced_settings_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_start_command_capture","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_stop_command_capture","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_load_command_replay","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_buffer_usage_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_reset_buffer_usage","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_cpu_usage_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_memory_usage_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_set_callback","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_sound_info_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_get_core_system","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_lookup_id","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_lookup_path","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_system_is_valid","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_vca_set_volume","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_vca_get_volume","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_vca_get_id","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_vca_get_path","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_studio_vca_is_valid","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_create","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_select","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_count","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_init","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_release","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_update_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_mixer_suspend","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_mixer_resume","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_set_output","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_output","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_num_drivers","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_driver_info_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_set_driver","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_driver","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_set_software_channels","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_software_channels","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_set_software_format","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_software_format_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_set_dsp_buffer_size","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_dsp_buffer_size_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_set_stream_buffer_size","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_stream_buffer_size_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_set_advanced_settings_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_advanced_settings_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_set_speaker_position","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_speaker_position_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_set_3d_settings","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_3d_settings_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_set_3d_num_listeners","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_3d_num_listeners","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_set_3d_rolloff_callback","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_set_network_proxy","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_network_proxy","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_set_network_timeout","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_network_timeout","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_version","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_channels_playing_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_cpu_usage_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_file_usage_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_speaker_mode_channels","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_create_sound_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_create_stream_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_create_dsp","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_create_dsp_by_type","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_create_channel_group","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_create_sound_group","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_create_reverb_3d","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_play_sound_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_play_dsp_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_channel","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_master_channel_group","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_master_sound_group","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_set_3d_listener_attributes_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_3d_listener_attributes_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_set_reverb_properties_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_reverb_properties_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_attach_channel_group_to_port_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_detach_channel_group_from_port","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_record_num_drivers_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_record_driver_info_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_record_position","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_record_start","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_record_stop","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_is_recording","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_create_geometry","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_set_geometry_settings","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_geometry_settings","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_load_geometry_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_get_geometry_occlusion_multiplatform","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_lock_dsp","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_unlock_dsp","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_system_set_callback","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_fetch_callbacks","path":"extensions/FMOD/FMOD.yy",},
        {"name":"fmod_last_result","path":"extensions/FMOD/FMOD.yy",},
      ],"origname":"","ProxyFiles":[
        {"resourceType":"GMProxyFile","resourceVersion":"1.0","name":"YYFMOD.so","TargetMask":7,},
        {"resourceType":"GMProxyFile","resourceVersion":"1.0","name":"libYYFMOD.dylib","TargetMask":1,},
        {"resourceType":"GMProxyFile","resourceVersion":"1.0","name":"YYFMOD_ps4.prx","TargetMask":32,},
        {"resourceType":"GMProxyFile","resourceVersion":"1.0","name":"YYFMOD_ps5.prx","TargetMask":59,},
        {"resourceType":"GMProxyFile","resourceVersion":"1.0","name":"YYFMOD.nro","TargetMask":57,},
        {"resourceType":"GMProxyFile","resourceVersion":"1.0","name":"YYFMOD.nrr","TargetMask":57,},
        {"resourceType":"GMProxyFile","resourceVersion":"1.0","name":"YYFMOD_xboxone.dll","TargetMask":61,},
        {"resourceType":"GMProxyFile","resourceVersion":"1.0","name":"YYFMOD_xboxseriesxs.dll","TargetMask":61,},
        {"resourceType":"GMProxyFile","resourceVersion":"1.0","name":"YYFMOD_x64.dll","TargetMask":6,},
      ],"uncompress":false,"usesRunnerInterface":true,},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"libfmodL.dylib","constants":[],"copyToTargets":576460756598390786,"filename":"libfmodL.dylib","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"__libfmodL_load__","argCount":0,"args":[],"documentation":"","externalName":"__libfmodL_load__","help":"","hidden":true,"kind":1,"returnType":1,},
      ],"init":"__libfmodL_load__","kind":1,"order":[],"origname":"","ProxyFiles":[
        {"resourceType":"GMProxyFile","resourceVersion":"1.0","name":"libfmodL.prx","TargetMask":32,},
        {"resourceType":"GMProxyFile","resourceVersion":"1.0","name":"libfmodL.prx","TargetMask":59,},
      ],"uncompress":false,"usesRunnerInterface":false,},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"libfmodstudioL.dylib","constants":[],"copyToTargets":576460756598390786,"filename":"libfmodstudioL.dylib","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"__libfmodstudioL_load__","argCount":0,"args":[],"documentation":"","externalName":"__libfmodstudioL_load__","help":"","hidden":true,"kind":1,"returnType":1,},
      ],"init":"__libfmodstudioL_load__","kind":1,"order":[],"origname":"","ProxyFiles":[
        {"resourceType":"GMProxyFile","resourceVersion":"1.0","name":"libfmodstudioL.prx","TargetMask":32,},
        {"resourceType":"GMProxyFile","resourceVersion":"1.0","name":"libfmodstudioL.prx","TargetMask":59,},
      ],"uncompress":false,"usesRunnerInterface":false,},
  ],
  "gradleinject": "",
  "hasConvertedCodeInjection": true,
  "helpfile": "",
  "HTML5CodeInjection": "",
  "html5Props": false,
  "IncludedResources": [],
  "installdir": "",
  "iosCocoaPodDependencies": "",
  "iosCocoaPods": "",
  "ioscodeinjection": "<YYIosPlist>\r\n\r\n<key>NSMicrophoneUsageDescription</key>\n<string>${YYEXTOPT_FMOD_iosMicAccessDesc}</string>\n\r\n</YYIosPlist>",
  "iosdelegatename": "",
  "iosplistinject": "\r\n\r\n<key>NSMicrophoneUsageDescription</key>\n<string>${YYEXTOPT_FMOD_iosMicAccessDesc}</string>\n\r\n",
  "iosProps": true,
  "iosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [
    {"resourceType":"GMExtensionFrameworkEntry","resourceVersion":"1.0","name":"libYYFMOD.xcframework","embed":0,"weakReference":false,},
  ],
  "license": "",
  "maccompilerflags": "",
  "maclinkerflags": "",
  "macsourcedir": "",
  "options": [
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"__extOptLabel1","defaultValue":"DESKTOP:","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"c7909757-05f8-4365-b44d-00795f9489f9","hidden":false,"listItems":[],"optType":5,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"winSdkPath","defaultValue":"","description":"This is the path to the folder containing the \"api\" subfolder.","displayName":"Windows SDK","exportToINI":true,"extensionId":null,"guid":"69e2040b-c54f-4d66-87d8-04c2caa2f267","hidden":false,"listItems":[],"optType":4,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"macosSdkPath","defaultValue":"","description":"This is the path to the folder containing the \"api\" subfolder.","displayName":"macOS SDK","exportToINI":false,"extensionId":null,"guid":"aff0f052-c04f-4ea7-9c53-c10ef775761d","hidden":false,"listItems":[],"optType":4,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"linuxSdkPath","defaultValue":"","description":"This is the path to the folder containing the \"api\" subfolder.","displayName":"Linux SDK","exportToINI":true,"extensionId":null,"guid":"56095c61-1b68-47e5-8371-cd33dc182612","hidden":false,"listItems":[],"optType":4,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"__extOptLabel2","defaultValue":"MOBILE:","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"b6788195-a70c-47ef-9e3a-71d3164e6811","hidden":false,"listItems":[],"optType":5,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"androidSdkPath","defaultValue":"","description":"This is the path to the folder containing the \"api\" subfolder.","displayName":"Android SDK","exportToINI":false,"extensionId":null,"guid":"87fb1cc8-413d-4d16-adc8-4d5ab4bdda24","hidden":false,"listItems":[],"optType":4,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"iosSdkPath","defaultValue":"","description":"This is the path to the folder containing the \"api\" subfolder.","displayName":"iOS SDK","exportToINI":false,"extensionId":null,"guid":"76beba25-6577-4c2d-a634-c3cff691891e","hidden":false,"listItems":[],"optType":4,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"__extOptLabel","defaultValue":"CONSOLES:","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"a3654e29-28eb-474f-8485-4d39cafd0034","hidden":false,"listItems":[],"optType":5,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"ps4SdkPath","defaultValue":"","description":"This is the path to the folder containing the \"api\" subfolder.","displayName":"Playstation 4 SDK","exportToINI":false,"extensionId":null,"guid":"c38ca8d3-bbf2-49d2-9429-39ba826abb3a","hidden":false,"listItems":[],"optType":4,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"ps5SdkPath","defaultValue":"","description":"This is the path to the folder containing the \"api\" subfolder.","displayName":"Playstation 5 SDK","exportToINI":false,"extensionId":null,"guid":"38fe1b85-26c7-4f47-895e-a3e02ae085d0","hidden":false,"listItems":[],"optType":4,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"gdkSdkPath","defaultValue":"","description":"This is the path to the folder containing the \"api\" subfolder.","displayName":"GDK SDK","exportToINI":false,"extensionId":null,"guid":"8045572c-0785-4a86-8c39-33bbc58f4a86","hidden":false,"listItems":[],"optType":4,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"switchSdkPath","defaultValue":"","description":"This is the path to the folder containing the \"api\" subfolder.","displayName":"Switch SDK","exportToINI":false,"extensionId":null,"guid":"b51e9c37-b697-4393-a88d-aaf823a459ef","hidden":false,"listItems":[],"optType":4,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"__extOptLabel5","defaultValue":"iOS CONFIGURATION:","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"bd5dc2d8-951b-4ee1-adfe-680ac750d83f","hidden":false,"listItems":[],"optType":5,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"iosMicAccess","defaultValue":"False","description":"","displayName":"Mic Access","exportToINI":false,"extensionId":null,"guid":"5ab86468-990a-4add-a836-8da80a081c12","hidden":false,"listItems":[],"optType":0,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"iosMicAccessDesc","defaultValue":"This application requires microphone access for recording purposes.","description":"","displayName":"Mic Access Desc","exportToINI":false,"extensionId":null,"guid":"c91aefca-e289-4cfe-bf9c-9c431dc97779","hidden":false,"listItems":[],"optType":2,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"__extOptLabel6","defaultValue":"tvOS CONFIGURATION:","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"17c9e365-a940-469d-8960-09785b9fb47b","hidden":false,"listItems":[],"optType":5,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"tvosMicAccess","defaultValue":"False","description":"","displayName":"Mic Access","exportToINI":false,"extensionId":null,"guid":"e67ba705-7c01-41d3-b047-33b50e0a5b53","hidden":false,"listItems":[],"optType":0,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"tvosMicAccessDesc","defaultValue":"This application requires microphone access for recording purposes.","description":"","displayName":"Mic Access Desc","exportToINI":false,"extensionId":null,"guid":"f563351a-3cd8-4bc9-9e4a-1baa89b26865","hidden":false,"listItems":[],"optType":2,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"enableStudio","defaultValue":"True","description":"","displayName":"Enable","exportToINI":false,"extensionId":null,"guid":"0b9245eb-e6d6-4763-87c8-5fc0e4f67b65","hidden":true,"listItems":[],"optType":0,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"__extOptLabel3","defaultValue":"EXTRA OPTIONS:","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"fa3cd3b9-9573-46f8-b93e-6b3978afbe3f","hidden":false,"listItems":[],"optType":5,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"logLevel","defaultValue":"1","description":"The log level to be used by the script file.\r\n0: Show only errors\r\n1: Show errors and warnings (recommended)\r\n2: Show everything (use before submitting a bug)","displayName":"Log Level","exportToINI":false,"extensionId":null,"guid":"3038610d-8497-4444-8d59-ef7b8739e6cd","hidden":false,"listItems":[
        "0",
        "1",
        "2",
      ],"optType":6,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"winSdkHash","defaultValue":"B8950C7EAF808ACA1F8408379BA302AAAE0C8EA5F5F36CEE7820BF4EE57EADC9","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"93876551-db41-470b-b263-0c58da96bf0c","hidden":true,"listItems":[],"optType":2,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"macosSdkHash","defaultValue":"1DDE5FB8E34281DC50A34F8596826773FC15367FBD3A8DCC79D5EF37D3547D18","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"fc975c95-8ebf-4472-b8b0-71598f4362f7","hidden":true,"listItems":[],"optType":2,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"linuxSdkHash","defaultValue":"F52A49374178C146398493F6BEDB037089358189C7C03AE4E372D3989F5CCDA5","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"2a9259dd-c58c-4768-909c-d33dc1f345f5","hidden":true,"listItems":[],"optType":2,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"androidSdkHash","defaultValue":"75B43260D80591FC273551296DBC5089236B1BB347BA4EBBBB97368728D48714","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"7c87c02f-8035-461f-a0e9-0a2cda6add70","hidden":true,"listItems":[],"optType":2,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"iosSdkHash","defaultValue":"76F29ED7B4307018D0B72448F83146F4695522617D800C026FAA95C50567AA94","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"65128c87-9320-4485-982e-3ea44a04bbbf","hidden":true,"listItems":[],"optType":2,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"ps4SdkHash","defaultValue":"B80CB1A03F86D0F98C8C6046A548A9F6539EAF36314A2C223DFC25D01A9599E2","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"541c269a-f408-45f1-af57-8631b3630bf6","hidden":true,"listItems":[],"optType":2,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"ps5SdkHash","defaultValue":"CFF0039C43C625537E04C8ABDF6D21AA05EE108AAE32FB09A3B0FF3D37422548","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"9576d19a-f1b0-41e3-9b46-a6a50e43b936","hidden":true,"listItems":[],"optType":2,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"xboxOneSdkHash","defaultValue":"E35B15DF3C274EA413128DAEB8BCC1A3416460B4F8C025599961BE512BB74700","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"0241cf78-dee9-407b-aa5a-486692e2d5f4","hidden":true,"listItems":[],"optType":2,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"xboxSeriesSdkHash","defaultValue":"9FD1D273DA3B5BAE33C53A0AC3F37C76476F0DA20026C1E77F4698E65DF1E540","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"779383e3-8598-4730-b0bd-1fbfe72ff5a8","hidden":true,"listItems":[],"optType":2,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"switchSdkHash","defaultValue":"---","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"5856746a-d3a1-4242-936d-015712faceb4","hidden":true,"listItems":[],"optType":2,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"sdkVersion","defaultValue":"2.02","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"133d4f59-422a-4d29-bf7e-ba38791d00e7","hidden":true,"listItems":[],"optType":2,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"versionStable","defaultValue":"2023.11.0.0","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"7bb0e749-5408-4eb5-a925-9d74038bbd92","hidden":true,"listItems":[],"optType":2,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"versionBeta","defaultValue":"2023.1100.0.0","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"c23a4782-1be6-4006-92d8-fd87750bb481","hidden":true,"listItems":[],"optType":2,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"versionDev","defaultValue":"9.9.1.611","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"670daf0c-b9c8-40b6-a8a8-12580e85dd69","hidden":true,"listItems":[],"optType":2,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"versionLTS","defaultValue":"2022.0.2.0","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"4f8c9c18-886c-4c01-8cd2-f469c38afb87","hidden":true,"listItems":[],"optType":2,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"gmrtReady","defaultValue":"True","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"3b29df9d-1f44-44b6-8dcc-f7d372077750","hidden":true,"listItems":[],"optType":2,},
  ],
  "optionsFile": "options.json",
  "packageId": "",
  "parent": {
    "name": "Extensions",
    "path": "folders/Fmod/Extensions.yy",
  },
  "productId": "",
  "sourcedir": "",
  "supportedTargets": -1,
  "tvosclassname": "Fmod_iOS",
  "tvosCocoaPodDependencies": "",
  "tvosCocoaPods": "",
  "tvoscodeinjection": "<YYIosPlist>\r\n\r\n<key>NSMicrophoneUsageDescription</key>\r\n<string>${YYEXTOPT_FMOD_tvosMicAccessDesc}</string>\r\n\r\n</YYIosPlist>",
  "tvosdelegatename": null,
  "tvosmaccompilerflags": "",
  "tvosmaclinkerflags": "",
  "tvosplistinject": "",
  "tvosProps": true,
  "tvosSystemFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [
    {"resourceType":"GMExtensionFrameworkEntry","resourceVersion":"1.0","name":"libYYFMOD.xcframework","embed":0,"weakReference":false,},
  ],
}