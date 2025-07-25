if (place_meeting(x, y - 1, obj_parent_player))
{
    with (obj_parent_player)
    {
        var minecart_can_traverse = state == (61 << 0) && y < (other.y + 40);
        
        if (state != (76 << 0) && !minecart_can_traverse && !global.freezeframe)
        {
            if (state == (47 << 0) || state == (56 << 0))
                instance_create(x, y, obj_poofeffect);
            
            if (state == (61 << 0))
            {
                instance_create(x, y, obj_bombExplosion);
                
                for (var i = 0; i < (sprite_get_number(spr_minecartdebris) - 1); i++)
                {
                    with (create_debris(x + random_range(-10, 10), y + random_range(-10, 10), spr_minecartdebris))
                        image_index = i;
                }
            }
            
            image_index = 0;
            sprite_index = spr_player_PZ_fireAss_intro;
            state = (67 << 0);
            vsp = -20;
            movespeed = hsp;
            
            if (!event_instance_isplaying(sndFireass))
                fmod_studio_event_instance_start(sndFireass);
            
            event_play_oneshot("event:/SFX/player/burn", x, y);
        }
    }
}
