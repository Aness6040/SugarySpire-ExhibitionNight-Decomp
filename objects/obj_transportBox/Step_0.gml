with (obj_parent_player)
{
    if (other.image_yscale == 1)
    {
        if (((key_down && !place_meeting(x, y + 1, obj_destructibles) && place_meeting(x, y + 1, other.id) && (state == (29 << 0) || state == (7 << 0) || state == (12 << 0))) || ((state == (37 << 0) || state == (38 << 0)) && !place_meeting(x, y + 1, obj_destructibles) && place_meeting(x, y + 1, other.id))) && !instance_exists(obj_fadeoutTransition) && state != (40 << 0) && state != (26 << 0))
        {
            with (other)
            {
                event_user(0);
                sprite_index = spr_pizzabox_front;
                depth = -30;
            }
            
            event_play_oneshot("event:/SFX/general/box", x, y);
            obj_parent_player.box = true;
            image_index = 0;
            image_speed = 0.35;
            machTwo = 0;
            obj_camera.chargeCameraX = 0;
            x = other.x;
            obj_parent_player.targetDoor = other.targetDoor;
            obj_parent_player.targetRoom = other.targetRoom;
            sprite_index = spr_downpizzabox;
            state = (40 << 0);
        }
    }
    
    if (other.image_yscale == -1)
    {
        if ((((key_up || state == (27 << 0) || state == (6 << 0)) && !place_meeting(x, y - 1, obj_destructibles) && place_meeting(x, y - 1, other.id) && (state == (24 << 0) || state == (6 << 0) || state == (7 << 0) || state == (48 << 0) || state == (27 << 0) || state == (32 << 0) || state == (33 << 0))) && !place_meeting(x, y - 1, obj_destructibles) && place_meeting(x, y - 1, other.id)) && !instance_exists(obj_fadeoutTransition))
        {
            event_play_oneshot("event:/SFX/general/box");
            
            with (other)
            {
                event_user(0);
                sprite_index = spr_pizzabox_front;
                depth = -30;
            }
            
            event_play_oneshot("event:/SFX/general/box", x, y);
            obj_parent_player.box = true;
            image_index = 0;
            image_speed = 0.35;
            machTwo = 0;
            obj_camera.chargeCameraX = 0;
            x = other.x;
            obj_parent_player.targetDoor = other.targetDoor;
            obj_parent_player.targetRoom = other.targetRoom;
            sprite_index = spr_uppizzabox;
            state = (40 << 0);
        }
    }
}
