with (obj_parent_player)
{
    if (state != (76 << 0) && state != (47 << 0) && state != (56 << 0) && state != (57 << 0) && state != (54 << 0) && state != (18 << 0) && state != (35 << 0) && state != (70 << 0) && state != (0 << 0))
    {
        if (place_meeting_platform(x, y + 1, other) && vsp >= 0 && state != (16 << 0))
        {
            state = (16 << 0);
            vsp = 0;
        }
    }
}
