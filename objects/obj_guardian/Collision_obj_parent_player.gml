if (sprite_index != spr_guardian_wakingUp && state == (3 << 0) && chaseActive && !(other.state == (59 << 0) || other.state == (93 << 0)))
{
    scr_hurtplayer(other);
    
    with (obj_achievementTracker)
        tookGuardianDamage = true;
}
