with (obj_parent_player)
{
    if (place_meeting(x, y, other.id) && alarm[0] <= 0 && !instance_exists(obj_fadeoutTransition) && key_up2 && grounded && (state == (1 << 0) || state == (28 << 0) || state == (32 << 0) || state == (33 << 0) || state == (3 << 0)) && state != (40 << 0) && state != (25 << 0) && state != (26 << 0))
    {
        with (other)
        {
            sprite_index = spr_soundTest_buttonPressed;
            alarm[0] = 5;
        }
    }
}
