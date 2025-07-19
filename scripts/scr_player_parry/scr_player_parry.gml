function state_player_parry()
{
    hsp = -xscale * movespeed;
    
    if (movespeed > 0)
        movespeed = approach(movespeed, 0, 0.5);
    
    if (sprite_animation_end())
        state = (1 << 0);
    
    image_speed = 0.5;
}
