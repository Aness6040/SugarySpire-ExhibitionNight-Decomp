with (other)
{
    if ((state == (61 << 0) || state == (63 << 0) || (state == (62 << 0) && vsp > 0)) && sprite_index != spr_player_PZ_minecart_bounce && !global.freezeframe)
    {
        var _x = x;
        var _y = y;
        x = other.x + (other.image_xscale * 60);
        hsp = 0;
        vsp = 0;
        movespeed = 0;
        
        with (obj_camera)
        {
            cameraXOffset = _x - other.x;
            cameraYOffset = _y - other.y;
        }
        
        event_play_oneshot("event:/SFX/general/fredcustcenehit");
        sprite_index = spr_player_PZ_minecart_fredBump;
        image_index = 0;
        state = (70 << 0);
        other.sprite_index = spr_fred_pissed;
        other.fred_y = other.y;
        other.cutscene = true;
        other.actor_buffer = 60;
    }
}
