event_inherited();

for (var i = 0; i < 3; i++)
{
    with (instance_create(x, y, obj_baddieDead))
    {
        vsp = random_range(-7, -10);
        hsp = random_range(5, 10) * other.DestroyedBy.image_xscale;
        rotatevalue = random_range(5, 10);
        rotatedirection = other.DestroyedBy.image_xscale;
        canrotate = true;
        sprite_index = spr_clutterTrash_destroyed;
        image_index = i;
        image_speed = 0;
    }
}
