canCollide = function(arg0, arg1 = obj_parent_player)
{
    switch (arg1.object_index)
    {
        case obj_parent_player:
        case obj_player1:
        case obj_player2:
            return arg1.state != (61 << 0) && arg1.state != (63 << 0) && arg1.state != (62 << 0);
            break;
        
        default:
            return true;
            break;
    }
};

image_speed = 0.05;
