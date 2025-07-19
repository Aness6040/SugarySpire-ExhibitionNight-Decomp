if (collide == 1)
{
    instance_destroy(id, false);
    
    with (obj_parent_player)
    {
        if (state != (81 << 0))
        {
            state = (81 << 0);
            xscale = other.image_xscale;
            x = other.x;
            y = other.y;
            image_index = 0;
            sprite_index = spr_player_PZ_bottleRocket_normal;
        }
    }
}
