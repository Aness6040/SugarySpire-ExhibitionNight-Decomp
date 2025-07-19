if (geyserPredeploy)
{
    while (!place_meeting(x, y, obj_geyserstop))
        image_yscale += geyserHeightInterval;
    
    geyserSolid = true;
}
else if (!place_meeting(x, y, obj_geyserstop) && geysertimer > 0)
{
    image_yscale += geyserHeightInterval;
    alarm[0] = 150;
    alarm[1] = 5;
}

if (!global.freezeframe)
{
    with (instance_place(x, y, obj_parent_player))
    {
        if ((other.geysertimer > 0 || other.geyserPredeploy) && (!other.geyserSolid || y > other.bbox_top) && state != (70 << 0))
        {
            if (state == (34 << 0) || (state == (7 << 0) && (key_down || sprite_index == spr_wallJumpFastFall || sprite_index == spr_wallJumpFastFallIntro)) || state == (37 << 0) || state == (12 << 0) || state == (1 << 0) || state == (24 << 0) || state == (6 << 0))
            {
                sprite_index = spr_player_PZ_geyser;
                state = (24 << 0);
                grounded = 0;
                movespeed = approach(movespeed, 0, 0.25);
                
                if (state == (34 << 0))
                    xscale *= -1;
                
                if (state == (6 << 0))
                {
                    state = (7 << 0);
                    fmod_studio_event_instance_start(sndWallkickStart);
                }
            }
            
            if (vsp > -8)
                vsp = -9;
            else
                vsp = approach(vsp, -18, 0.8);
            
            wetTimer = approach(wetTimer, wetTimerMax, 15);
        }
    }
    
    with (obj_parent_enemy)
    {
        if (place_meeting(x, y, other) && (other.geysertimer > 0 || other.geyserPredeploy) && (!other.geyserSolid || y > other.bbox_top))
        {
            if (state != (6 << 0) && state != (8 << 0) && state != (5 << 0) && state != (9 << 0) && state != (7 << 0))
            {
                sprite_index = baddieSpriteStun;
                state = (4 << 0);
                baddieStunTimer = 100;
                hsp = approach(hsp, 0, 0.3);
                
                if (vsp > -8)
                    vsp = -9;
                else
                    vsp = approach(vsp, -18, 0.8);
            }
            
            wetTimer = approach(wetTimer, wetTimerMax, 15);
        }
    }
}

if (event_instance_isplaying(sound))
    fmod_quick3D(sound, (x - sprite_xoffset) + (sprite_width / 2), bbox_top);

if (event_instance_isplaying(ambianceSND))
{
    var _xx = clamp(obj_parent_player.x, bbox_left, bbox_right);
    var _yy = clamp(obj_parent_player.y, bbox_top - 30, bbox_bottom);
    fmod_quick3D(ambianceSND, _xx, _yy);
}

if (geyserSolid)
    canCollide = solidCollideFunc;
else
    canCollide = nonsolidCollideFunc;
