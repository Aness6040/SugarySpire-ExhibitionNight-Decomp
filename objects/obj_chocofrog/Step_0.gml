with (instance_nearest(x, y, obj_parent_player))
{
    var bumpstates = [(33 << 0), (32 << 0), (12 << 0), (10 << 0), (65 << 0)];
    
    if ((place_meeting(x + hsp, y, other.id) || place_meeting(x + xscale, y, other.id)) && object_index != obj_chocofrogsmall && array_contains(bumpstates, state))
    {
        event_play_oneshot("event:/SFX/player/splat", x, y);
        state = (35 << 0);
        hsp = -xscale * 5;
        vsp = -2;
        sprite_index = spr_bump;
        image_index = 0;
        
        with (other.id)
        {
            image_index = 0;
            
            if (obj_parent_player.x < ((x - sprite_xoffset) + (sprite_width / 2)))
                sprite_index = spr_chocofrogbig_bumpL;
            else
                sprite_index = spr_chocofrogbig_bumpR;
        }
    }
    
    if ((place_meeting(x + hsp, y, other.id) || place_meeting(x + xscale, y, other.id)) && state == (47 << 0) && movespeed >= 8)
    {
        with (other.id)
            instance_destroy();
    }
    
    if ((place_meeting(x + hsp, y + vsp, other.id) || place_meeting(x + xscale, y + sign(vsp), other.id)) && state == (58 << 0))
    {
        with (other.id)
            instance_destroy();
    }
    
    if ((place_meeting(x + hsp, y, other.id) || place_meeting(x + xscale, y, other.id)) && state == (47 << 0) && sprite_index == spr_player_PZ_werecotton_drill_h)
    {
        with (other.id)
            instance_destroy();
    }
    
    if ((place_meeting(x + hsp, y, other.id) || place_meeting(x + xscale, y, other.id)) && state == (57 << 0))
    {
        with (other.id)
            instance_destroy();
    }
    
    if (((place_meeting(x, y + vsp, other.id) && vsp > 0) || place_meeting(x, y + 1, other.id)) && state == (56 << 0))
    {
        with (other.id)
            instance_destroy();
    }
    
    if ((place_meeting(x + hsp, y, other.id) || place_meeting(x + xscale, y, other.id)) && state == (61 << 0))
    {
        with (other.id)
            instance_destroy();
    }
    
    if ((place_meeting(x + hsp, y, other.id) || place_meeting(x + xscale, y, other.id)) && (state == (67 << 0) || state == (68 << 0)))
    {
        with (other.id)
            instance_destroy();
    }
    
    if ((place_meeting(x, y + vsp, other.id) || place_meeting(x, y + sign(vsp), other.id)) && (state == (67 << 0) || state == (68 << 0)))
    {
        with (other.id)
            instance_destroy();
    }
    
    if ((place_meeting(x + hsp, y, other.id) || place_meeting(x + xscale, y, other.id)) && state == (74 << 0))
    {
        with (other.id)
            instance_destroy();
    }
    
    if ((place_meeting(x, y + vsp, other.id) || place_meeting(x, y + sign(vsp), other.id)) && state == (74 << 0))
    {
        with (other.id)
            instance_destroy();
    }
    
    if ((place_meeting(x + hsp, y, other.id) || place_meeting(x + xscale, y, other.id)) && state == (74 << 0))
    {
        with (other.id)
            instance_destroy();
    }
    
    if ((place_meeting(x, y + vsp, other.id) || place_meeting(x, y + sign(vsp), other.id)) && state == (74 << 0))
    {
        with (other.id)
            instance_destroy();
    }
    
    if ((place_meeting(x + hsp, y, other.id) || place_meeting(x + xscale, y, other.id)) && (state == (88 << 0) || state == (90 << 0) || state == (89 << 0)))
    {
        with (other.id)
            instance_destroy();
    }
    
    if ((place_meeting(x, y + vsp, other.id) || place_meeting(x, y + sign(vsp), other.id)) && (state == (90 << 0) || state == (89 << 0)))
    {
        with (other.id)
            instance_destroy();
    }
    
    if ((place_meeting(x + hsp, y, other.id) || place_meeting(x + xscale, y, other.id)) && state == (81 << 0) && substate == 0)
    {
        with (other.id)
            instance_destroy();
    }
    
    if ((place_meeting(x + hsp, y, other.id) || place_meeting(x + xscale, y, other.id)) && state == (42 << 0))
    {
        with (other.id)
            instance_destroy();
    }
}

with (obj_creamThief)
{
    if (place_meeting(x + hsp, y, other.id) || place_meeting(x + xscale, y, other.id))
    {
        with (other.id)
            instance_destroy();
    }
}

if (place_meeting(x, y, obj_bombExplosionPlayer) && instance_place(x, y, obj_bombExplosionPlayer).frog)
    instance_destroy();

if (sprite_animation_end())
{
    switch (sprite_index)
    {
        case spr_chocofrogbig_bumpR:
        case spr_chocofrogbig_bumpL:
            sprite_index = spr_chocofrogbig;
            break;
    }
}
