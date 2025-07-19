if (escapeBlockedDoor && global.panic)
{
    showDoorLight = false;
    sprite_index = spriteDoorEscape;
    
    if (spriteDoorEscape == spr_tutorialdoor)
        image_index = 1;
    
    if (!place_meeting(x, y, obj_doorblocked))
        instance_create(x, y, obj_doorblocked);
    
    exit;
}

with (obj_parent_player)
{
    if (place_meeting(x, y, other.id) && !instance_exists(obj_fadeoutTransition) && key_up && grounded && (state == (1 << 0) || state == (28 << 0) || state == (32 << 0) || state == (33 << 0) || state == (3 << 0)) && state != (40 << 0) && state != (25 << 0) && state != (26 << 0))
    {
        image_index = 0;
        state = (40 << 0);
        targetDoor = other.targetDoor;
        targetRoom = other.targetRoom;
        obj_camera.chargeCameraX = 0;
        
        if (ds_list_find_index(global.SaveRoom, other.id) == -1)
            ds_list_add(global.SaveRoom, other.id);
    }
}
