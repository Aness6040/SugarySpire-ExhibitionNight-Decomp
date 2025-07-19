updateEffectPosition();

if (playerID.state != (37 << 0) && playerID.state != (90 << 0) && playerID.state != (6 << 0) && playerID.state != (27 << 0) && playerID.state != (15 << 0))
    instance_destroy();

if (playerID.state == (15 << 0) && playerID.sprite_index == playerID.spr_piledriverland)
    instance_destroy();
