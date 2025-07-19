updateEffectPosition();

if ((playerID.state != (6 << 0) && playerID.state != (27 << 0)) || playerID.sprite_index == playerID.spr_superjumpCancelIntro)
    instance_destroy();
