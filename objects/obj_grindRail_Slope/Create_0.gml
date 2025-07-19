depth = 4;

canCollide = function(arg0, arg1 = obj_parent_player)
{
    switch (arg1.object_index)
    {
        case obj_parent_player:
        case obj_player1:
        case obj_player2:
            var _state = global.freezeframe ? arg1.frozenState : arg1.state;
            return _state != (76 << 0) && _state != (47 << 0) && _state != (56 << 0) && _state != (57 << 0) && _state != (54 << 0) && _state != (18 << 0) && _state != (35 << 0) && _state != (70 << 0) && _state != (0 << 0);
            break;
        
        case obj_creamThief:
        case obj_bigcherry:
        case obj_gigacherrydead:
        case obj_cherryBombCart:
            return true;
            break;
        
        default:
            return false;
            break;
    }
};
