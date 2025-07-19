function __scribble_class_generator_state() constructor
{
    static __Reset = function()
    {
        __element = undefined;
        __glyph_count = 0;
        __control_count = 0;
        __word_count = 0;
        __line_count = 0;
        __line_height_min = 0;
        __line_height_max = 0;
        __model_max_width = 0;
        __model_max_height = 0;
        __overall_bidi = undefined;
        __uses_halign_left = false;
        __uses_halign_center = false;
        __uses_halign_right = false;
        __bezier_lengths_array = undefined;
        __model_max_width = 0;
        __model_max_height = 0;
        __line_height_min = 0;
        __line_height_max = 0;
        __line_spacing_add = 0;
        __line_spacing_multiply = 0;
        __overall_bidi = (4 << 0);
        __glyph_count = 0;
        __control_count = 0;
    };
    
    __glyph_grid = ds_grid_create(1000, (21 << 0));
    __control_grid = ds_grid_create(1000, (2 << 0));
    __word_grid = ds_grid_create(1000, (6 << 0));
    __line_grid = ds_grid_create(1000, (9 << 0));
    __stretch_grid = ds_grid_create(1000, (3 << 0));
    __temp_grid = ds_grid_create(1000, (6 << 0));
    __temp2_grid = ds_grid_create(1000, (21 << 0));
    __vbuff_pos_grid = ds_grid_create(1000, (4 << 0));
    __Reset();
}
