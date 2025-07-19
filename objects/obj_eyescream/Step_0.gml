doCollision = !(state == (877 << 0) || state == (876 << 0) || scr_solid(x, y) || state == (2 << 0));
trace(doCollision);
baddieCollisionBoxEnabled = state != (879 << 0);

if (state == (0 << 0))
    state = (877 << 0);

if (state == (879 << 0))
{
    var p = get_nearestPlayer();
    var _disttoplayer = point_distance(x, y, p.x, p.y);
    hsp = 0;
    vsp = 0;
    image_speed = 0.35;
    
    if (sprite_index != spr_eyescreamsandwich_popout)
    {
        if (abs(_disttoplayer) < 200)
        {
            sprite_index = spr_eyescreamsandwich_popout;
            image_index = 0;
        }
    }
    else if (sprite_animation_end())
    {
        state = (877 << 0);
        var dir = point_direction(x, y, p.x, p.y);
        var _spd = 5;
        hsp = lengthdir_x(_spd, dir);
        vsp = lengthdir_y(_spd, dir);
        ragereset = 100;
    }
}

if (doCollision)
    scr_scareenemy();

if (ragereset > 0)
    ragereset--;

event_inherited();

if (state != (5 << 0))
    depth = 0;

if (state != (4 << 0) && state != (9 << 0))
    thrown = 0;
