with (obj_parent_player)
{
    if (place_meeting(x, y, other.id) && key_up && grounded == 1 && (state == (1 << 0) || state == (28 << 0) || state == (31 << 0) || state == (32 << 0) || state == (33 << 0)) && !instance_exists(obj_fadeoutTransition) && state != (40 << 0) && state != (25 << 0) && state != (26 << 0) && global.janitortype == 1)
    {
        if (ds_list_find_index(global.SaveRoom, other.id) != -1)
        {
            machTwo = 0;
            image_index = 0;
            obj_camera.chargeCameraX = 0;
            targetDoor = other.targetDoor;
            targetRoom = other.targetRoom;
            state = (40 << 0);
        }
        else if (global.janitorRudefollow == 1)
        {
            state = (25 << 0);
            image_index = 0;
            obj_camera.chargeCameraX = 0;
            targetDoor = other.targetDoor;
            targetRoom = other.targetRoom;
            
            with (other)
            {
                ds_list_add(global.SaveRoom, id);
                image_index = 0;
                sprite_index = spr_lapdooropen;
                image_speed = 0.35;
            }
            
            instance_destroy(obj_rudejanitor);
            instance_create(x, y, obj_lock);
        }
    }
}
