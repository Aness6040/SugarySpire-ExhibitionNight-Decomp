switch (state)
{
    case (0 << 0):
        if (randomBuffer > 0)
        {
            randomBuffer--;
        }
        else
        {
            randomBuffer = randomBufferMin + irandom(randomBufferMax);
            image_xscale = choose(-1, 1);
            movespeed = choose(1, 0);
            
            if (character == (4 << 0) && !global.panic && sprite_index != spr_builderBear_karen_idleAnim && choose(1, 0))
            {
                image_index = 0;
                sprite_index = spr_builderBear_karen_idleAnim;
            }
        }
        
        if (global.panic)
        {
            movespeed = 5;
            sprite_index = panicSprite;
        }
        else if (sprite_index != spr_builderBear_karen_idleAnim || (sprite_index == spr_builderBear_karen_idleAnim && sprite_animation_end()))
        {
            sprite_index = (movespeed >= 1) ? walkSprite : idleSprite;
        }
        
        if (character == (3 << 0) || character == (4 << 0) || (character == (2 << 0) && global.panic))
            movespeed = 0;
        
        hsp = movespeed * image_xscale;
        
        if (scr_solid(x + image_xscale, y, true) || (place_meeting(x + image_xscale, y, obj_clutterCone) && !place_meeting(x, y, obj_clutterCone)))
            image_xscale *= -1;
        
        var _bbox_side = (image_xscale >= 1) ? bbox_right : bbox_left;
        
        if (!scr_solid(_bbox_side + movespeed + image_xscale, bbox_bottom + 31))
            image_xscale *= -1;
        
        if (place_meeting(x + image_xscale, y, obj_hallway))
        {
            var hallway_direction = -sign(instance_place(x + sign(image_xscale), y, obj_hallway).image_xscale);
            
            if (sign(other.image_xscale) != hallway_direction)
                image_xscale = hallway_direction;
        }
        
        if (get_nearestPlayer(x, y).state == (18 << 0) && state != (1 << 0) && bbox_in_camera(self, view_camera[0], 50))
        {
            state = (1 << 0);
            scr_taunt_storeVariables();
            
            if (character == (4 << 0) && obj_parent_player.x != x)
                image_xscale = sign(obj_parent_player.x - x);
        }
        
        break;
    
    case (1 << 0):
        hsp = 0;
        vsp = 0;
        sprite_index = tauntSprite;
        
        if (obj_parent_player.state != (18 << 0))
        {
            scr_taunt_setVariables();
            state = (0 << 0);
            randomBuffer = randomBufferMin + irandom(randomBufferMax);
            
            if (sprite_index == spr_builderBear_karen_idleAnim)
                sprite_index = spr_builderBear_karen_idle;
        }
        
        break;
}

image_speed = 1;
