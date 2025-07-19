canCollide = function(arg0, arg1 = obj_parent_player)
{
    switch (arg1.object_index)
    {
        case obj_parent_player:
        case obj_player1:
        case obj_player2:
            var _state = global.freezeframe ? arg1.frozenState : arg1.state;
            return _state == (33 << 0) || (_state == (3 << 0) && arg1.movespeed >= 12) || _state == (89 << 0) || (_state == (90 << 0) && arg1.movespeed > 5) || _state == (53 << 0) || (_state == (12 << 0) && arg1.mach3Roll > 0) || _state == (61 << 0) || (_state == (81 << 0) && arg1.substate == 0);
            break;
        
        default:
            return true;
            break;
    }
};

hsp = 0;
