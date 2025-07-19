with (instance_nearest(x, y, obj_parent_player))
{
    if ((place_meeting(x + hsp, y, other.id) || place_meeting(x + xscale, y, other.id)) && (state == (33 << 0) || (state == (3 << 0) && movespeed >= 12) || state == (89 << 0) || (state == (90 << 0) && movespeed > 5) || state == (53 << 0) || (state == (12 << 0) && mach3Roll > 0) || state == (61 << 0) || (state == (81 << 0) && substate == 0)))
    {
        with (other.id)
        {
            DestroyedBy = other.id;
            event_user(0);
        }
    }
    
    if ((place_meeting(x + hsp, y, other.id) || place_meeting(x - xscale, y, other.id)) && state == (86 << 0) && movespeed >= 12)
    {
        with (other.id)
        {
            DestroyedBy = other.id;
            event_user(0);
        }
    }
    
    if (((place_meeting(x, y + vsp, other.id) && vsp < 0) || place_meeting(x, y - 1, other.id)) && state == (27 << 0))
    {
        with (other.id)
        {
            DestroyedBy = other.id;
            event_user(0);
        }
    }
    
    if (((place_meeting(x, y + vsp, other.id) && vsp < 0) || place_meeting(x, y - 1, other.id)) && state == (93 << 0))
    {
        with (other.id)
        {
            DestroyedBy = other.id;
            event_user(0);
        }
    }
    
    if (((place_meeting(x, y + vsp, other.id) && vsp < 0) || place_meeting(x, y - 1, other.id)) && state == (6 << 0) && machTwo >= 100)
    {
        with (other.id)
        {
            DestroyedBy = other.id;
            event_user(0);
        }
    }
    
    if (((place_meeting(x, y + vsp, other.id) && vsp >= 0) || place_meeting(x, y + 1, other.id)) && state == (38 << 0) && freeFallSmash > 10)
    {
        with (other.id)
        {
            DestroyedBy = other.id;
            event_user(0);
        }
    }
}
