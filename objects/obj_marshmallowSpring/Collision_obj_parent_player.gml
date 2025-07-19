with (other)
{
    if (!cutscene && !global.freezeframe && (state != (18 << 0) && state != (37 << 0) && state != (21 << 0) && state != (38 << 0)))
    {
        jumpStop = true;
        vsp = -18;
        
        if (state == (1 << 0) || state == (29 << 0) || state == (10 << 0) || state == (34 << 0))
            state = (24 << 0);
        
        if (state == (88 << 0) || state == (91 << 0) || state == (90 << 0))
        {
            image_index = 0;
            sprite_index = spr_player_PZ_frostburn_jump;
            state = (90 << 0);
        }
        
        if (state == (6 << 0) || state == (12 << 0))
            state = (32 << 0);
        
        if (state == (24 << 0) || state == (1 << 0))
        {
            sprite_index = spr_player_PZ_fall_outOfControl;
            image_index = 0;
        }
        
        with (other)
        {
            if (sprite_index != spr_marshmallowSpring_active)
                event_play_oneshot("event:/SFX/general/mallowbounce", x, y);
            
            sprite_index = spr_marshmallowSpring_active;
            image_index = 0;
        }
    }
}
