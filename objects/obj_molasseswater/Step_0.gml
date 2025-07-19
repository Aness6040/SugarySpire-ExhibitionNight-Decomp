if (place_meeting(x, y, obj_parent_player))
{
    with (obj_parent_player)
    {
        if (place_meeting(x, y, other))
        {
            if (state != (76 << 0) && state != (85 << 0) && !global.freezeframe)
            {
                if (vsp >= 0)
                {
                    if (!instance_exists(obj_techdiff))
                    {
                        if (state == (47 << 0) || state == (56 << 0))
                            instance_create(x, y, obj_poofeffect);
                        
                        scr_playerrespawn(true, true);
                        event_play_oneshot("event:/SFX/general/watersplash", x, y);
                        state = (70 << 0);
                        vsp = 10;
                        image_index = 10;
                        sprite_index = spr_drown;
                    }
                    else
                    {
                        sprite_index = spr_drown;
                        hsp = approach(hsp, 0, 1);
                        vsp -= grav;
                        vsp = approach(vsp, 0, 0.5);
                        image_speed = 0.35;
                        state = (70 << 0);
                    }
                    
                    wetTimer = approach(wetTimer, wetTimerMax, 15);
                }
            }
        }
    }
}
