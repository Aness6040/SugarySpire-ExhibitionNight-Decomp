if (global.freezeframe)
    exit;

with (other)
{
    if (!player_complete_invulnerability() && state != (47 << 0) && state != (56 << 0) && state != (40 << 0) && state != (57 << 0) && state != (58 << 0))
    {
        event_play_oneshot("event:/SFX/cotton/intro", x, y);
        state = (47 << 0);
        x = other.x;
        y = other.y + 33;
        flash = 0;
        targetxscale = xscale;
        xscale = 1;
        sprite_index = other.image_xscale ? spr_cottonIntroLeft : spr_cottonIntroRight;
        image_index = 0;
    }
}
