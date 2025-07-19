with (other)
{
    if (key_up && !place_meeting_collision(other.x + (other.sprite_width / 2), round(y), (12 << 0)) && !inputLadderBuffer && (state == (1 << 0) || state == (48 << 0) || state == (32 << 0) || state == (33 << 0) || state == (31 << 0) || state == (24 << 0)) && state != (36 << 0) && state != (34 << 0) && state != (37 << 0) && state != (38 << 0))
    {
        hsp = 0;
        vsp = 0;
        state = (23 << 0);
        x = other.x + (other.sprite_width / 2);
        y = round(y);
        
        if ((y % 2) == 1)
            y -= 1;
    }
}
