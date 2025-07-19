visible = global.showcollisions || isVisible;

if (place_meeting(x, y - 16, obj_parent_player))
{
    with (obj_parent_player)
    {
        var collide = place_meeting(x, y + 1, obj_ladder) && !place_meeting_collision(other.x + (other.sprite_width / 2), round(y + 5), (12 << 0));
        
        if ((collide && key_down && !key_up) && !inputLadderBuffer && (grounded && (state == (29 << 0) || state == (38 << 0))))
        {
            hsp = 0;
            vsp = 0;
            y += 5;
            state = (23 << 0);
            x = other.x + (other.sprite_width / 2);
            y = round(y);
            
            if ((y % 2) == 1)
                y -= 1;
        }
    }
}
