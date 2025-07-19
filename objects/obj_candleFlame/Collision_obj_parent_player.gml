var _check;

with (other)
    _check = movespeed >= 12 && sprite_index != spr_longJump && sprite_index != spr_longJump_intro && (state == (32 << 0) || state == (33 << 0) || (state == (3 << 0) && movespeed >= 12) || (state == (12 << 0) && mach3Roll > 0));

if (_check && ds_list_find_index(global.SaveRoom, id) == -1)
{
    visible = true;
    ds_list_add(global.SaveRoom, id);
}
