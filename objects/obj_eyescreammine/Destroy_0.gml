repeat (3)
{
    instance_create(x, y, obj_slapstar);
    instance_create(x, y, obj_baddieGibs);
}

event_play_oneshot("event:/SFX/enemies/kill");
instance_create(x, y + 30, obj_bangEffect);
camera_shake_add(3, 3);
var dir = point_direction(xstart, ystart - 25, tgt_x, tgt_y);

with (instance_create(x, y, obj_baddieDead))
{
    canrotate = true;
    image_xscale = other.image_xscale;
    sprite_index = spr_eyescreamsandwich_dead;
    hsp = lengthdir_x(16, dir);
    vsp = lengthdir_y(16, dir);
}
