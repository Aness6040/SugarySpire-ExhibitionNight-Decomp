if (instance_exists(obj_titlecard))
    exit;

var enter_gate = false;

with (obj_parent_player)
{
    var other_id = other.id;
    
    if (key_up && grounded && (state == (1 << 0) || state == (31 << 0) || state == (32 << 0) || state == (33 << 0)) && !instance_exists(obj_fadeoutTransition) && state != (25 << 0) && state != (26 << 0))
        enter_gate = true;
}

if (enter_gate)
{
    hasInteracted = true;
    stop_music(false);
    self.gotoLevel(level);
}

if (!secretcanspit && array_contains(secrets, true) && level != "tutorial")
{
    secretcanspit = true;
    
    repeat (5)
        create_radiating_particle(x, y - 128, spr_secretpoof);
}
