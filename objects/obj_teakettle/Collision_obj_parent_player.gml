with (other)
{
    vsp = approach(vsp, -12, 6);
    jumpStop = true;
    
    if (state == (34 << 0))
    {
        state = (1 << 0);
        sprite_index = spr_player_PZ_fall_outOfControl;
        image_index = 0;
    }
}
