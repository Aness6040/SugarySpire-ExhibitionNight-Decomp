var _state = global.freezeframe ? frozenState : state;

if (!global.freezeframe)
    yscale = 1;

if (_state == (5 << 0))
    scr_enemy_grabUpdatePosition(obj_player1);
