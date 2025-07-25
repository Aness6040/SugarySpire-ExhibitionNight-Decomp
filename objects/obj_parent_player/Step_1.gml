prevSpriteIndex = sprite_index;
grav = 0.5;

if (instance_exists(obj_cutsceneManager) && obj_cutsceneManager.exitLevelCustcene)
{
    hsp = 0;
    vsp = 0;
    grav = 0;
}

if (state != (35 << 0) && state != (57 << 0) && state != (29 << 0) && state != (54 << 0) && sprite_index != spr_null && sprite_index != spr_player_PZ_frostburn_land_spin && state != (28 << 0) && state != (12 << 0) && state != (36 << 0) && state != (30 << 0))
    mask_index = spr_player_mask;
else
    mask_index = spr_crouchmask;

scr_getinput();
inputBufferJump = key_jump ? 15 : max(inputBufferJump - 1, 0);
inputBufferSlap = key_slap2 ? 12 : max(inputBufferSlap - 1, 0);
coyoteTime = (grounded && vsp >= 0) ? 8 : max(coyoteTime - 1, 0);

if (vsp < 0)
    coyoteTime = 0;

can_jump = (grounded && vsp > 0) || (!grounded && coyoteTime > 0 && vsp > 0);
scr_playerstate();
hspCarry += slideHsp;
scr_collide_destructibles();

if (state != (2 << 0) && state != (74 << 0) && state != (76 << 0) && state != (40 << 0) && state != (26 << 0) && state != (25 << 0) && state != (11 << 0) && state != (19 << 0))
{
    scr_collision();
}
else if (state == (19 << 0))
{
    x += hsp;
    y += vsp;
    
    if (vsp < terminalVelocity)
        vsp += grav;
}

var _state = global.freezeframe ? frozenState : state;
scr_setTransfoTip(_state);

if (oldPromptText != global.TransfoPrompt)
{
    oldPromptText = global.TransfoPrompt;
    ini_open(global.SaveFileName);
    var _seen_prompt = ini_read_real("Tip", global.TransfoPrompt, false);
    
    if (global.TransfoPrompt != "" && !_seen_prompt)
    {
        scr_queueToolTipPrompt(lang_get(global.TransfoPrompt));
        ini_write_real("Tip", global.TransfoPrompt, true);
    }
    
    ini_close();
}

scr_playersounds();
cutscene = state == (40 << 0) || state == (55 << 0) || state == (70 << 0) || state == (25 << 0) || state == (26 << 0) || state == (19 << 0);
isInSecretPortal = false;
isInLapPortal = false;
draw_angle = 0;
