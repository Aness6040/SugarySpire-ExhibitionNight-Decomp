image_speed = 0.2;

with (obj_parent_player)
{
    if (((!place_meeting(x, y, obj_door) && (!place_meeting(x, y, obj_startGate) || state == (25 << 0)) && !place_meeting(x, y, obj_keydoorclock) && !place_meeting(x, y, obj_janitorDoor) && !place_meeting(x, y, obj_soundTest_Button) && !place_meeting(x, y, obj_keydoor) && !place_meeting(x, y, obj_exitgate)) || !(grounded && state == (1 << 0))) && !other.manual)
        instance_destroy(other.id);
}

x = obj_parent_player.x;
y = obj_parent_player.y - 50;
