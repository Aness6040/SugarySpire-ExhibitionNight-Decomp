var multi = 1;

if (instance_exists(obj_creditsDemo))
    multi = obj_creditsDemo.creditsSpeed / obj_creditsDemo.defaultSpeed;

if (dead)
{
    y += (vsp * multi);
    x += (hsp * multi);
    
    if (vsp < 20)
        vsp += 0.5;
    
    if (!bbox_in_camera(self, view_camera[0], 200))
    {
        hsp = 0;
        vsp = 0;
        visible = false;
    }
}

if (!dead && point_in_rectangle(get_mouse_x(), get_mouse_y(), bbox_left, bbox_top, bbox_right, bbox_bottom))
    global.DefaultCursor = -21;
