if (place_meeting(x, y, obj_parryhitbox) || global.freezeframe)
    exit;

with (other.id)
{
    if (instance_exists(other.baddieID) && !cutscene && scr_transformationCheck(state) == undefined && !hurted && state != (40 << 0) && state != (25 << 0) && state != (26 << 0) && state != (76 << 0) && state != (54 << 0) && state != (59 << 0) && state != (93 << 0) && state != (66 << 0) && state != (47 << 0) && state != (56 << 0) && state != (57 << 0) && sprite_index != spr_tumbleend)
    {
        state = (54 << 0);
        image_speed = 0.35;
        xscale = other.baddieID.image_xscale;
        movespeed = 10;
        vsp = 0;
        sprite_index = spr_tumble;
    }
}

if (instance_exists(baddieID))
    baddieID.baddieInvincibilityBuffer = 50;
