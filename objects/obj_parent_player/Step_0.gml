var a = instance_place(x, y, obj_secretwall);
secretArray = (a != -4) ? a.layerArray : [];

if (state != (26 << 0))
    image_blend = c_white;

inputLadderBuffer = max(inputLadderBuffer - 1, 0);
wetTimer = approach(wetTimer, 0, 3);

if (wetTimer > 0 && wetTimerEffect-- <= 0)
    wetTimerEffect = 3;

if (!instance_exists(heatAfterEffectID))
{
    heatAfterEffectID = instance_create(x, y, obj_heatAfterEffect, 
    {
        playerID: id
    });
}

if (state != (1 << 0))
{
    breakdanceBuffer = 0;
    breakdanceSpeed = 0.25;
}

if (fireTrailBuffer > 0)
    fireTrailBuffer -= ((movespeed / 24) * 26);

if (fireTrailBuffer <= 0)
{
    if (movespeed >= 12 && sprite_index != spr_longJump && sprite_index != spr_longJump_intro && (state == (32 << 0) || state == (33 << 0) || (state == (3 << 0) && movespeed >= 12) || (state == (12 << 0) && mach3Roll > 0)))
    {
        instance_create(x, y, obj_flameCloud, 
        {
            playerID: id
        });
    }
    
    fireTrailBuffer = 100;
}

if (state != (33 << 0) && state != (6 << 0))
    machFourMode = false;

var conveyor_hsp = conveyorBelt_hsp();

if (abs(conveyor_hsp) > 0)
    conveyorHsp = conveyor_hsp;
else if (abs(conveyor_hsp) <= 0)
    conveyorHsp = approach(conveyorHsp, 0, grounded ? 0.75 : 0.5);

if (!hasSeenProgressionPrompt && (room == hub_demohallway || room == hub_paintstudio) && !instance_exists(obj_fadeoutTransition))
{
    hasSeenProgressionPrompt = true;
    scr_queueToolTipPrompt(lang_get("demo_judgement_hint"));
}

if (room == rm_mainmenu || room == rm_introVideo || room == rm_startupLogo || room == rm_disclaimer)
    state = (2 << 0);

if (grounded)
    floatyGrab = 18;

var ceiling = inBackgroundLayer ? (-global.BgInstanceLayerOffset - 600) : -600;

if ((y > (room_height + 400) || y < ceiling) && room != timesuproom && state != (76 << 0) && !instance_exists(obj_fadeoutTransition) && !instance_exists(obj_cutsceneManager))
    scr_playerrespawn();

if (state != (37 << 0) && state != (21 << 0) && state != (38 << 0) && state != (15 << 0))
    freeFallSmash = -14;

if (!global.freezeframe && state != (0 << 0))
{
    if (!instance_exists(baddieGrabbedID) && (state == (17 << 0) || state == (4 << 0)))
        state = (1 << 0);
    
    if (state != (17 << 0) && state != (4 << 0) && state != (15 << 0) && state != (46 << 0))
        baddieGrabbedID = -4;
    
    if (state != (12 << 0) && state != (33 << 0))
        mach3Roll = 0;
}

if (sprite_index == spr_player_PZ_tired && state != (1 << 0))
    windingAnim = 0;

if (!global.freezeframe)
    global.ComboFreeze--;

global.ComboFreeze = clamp(global.ComboFreeze, 0, 15);
global.ComboTime = clamp(global.ComboTime, 0, 60);

if (!global.freezeframe && !instance_exists(obj_fadeoutTransition) && global.ComboFreeze <= 0 && !is_tutorial())
    global.ComboTime = approach(global.ComboTime, 0, 0.15);

var c_title = floor(global.Combo / 5);

if (oldComboTitle != c_title && c_title > 0)
{
    instance_destroy(obj_comboTitleEffect);
    instance_destroy(obj_comboEndEffect);
    instance_create(830, 265, obj_comboTitleEffect, 
    {
        title: c_title
    });
    oldComboTitle = c_title;
}

if (global.ComboTime <= 0 && global.Combo != 0)
{
    if (global.Combo > 5)
        scr_queueTVAnimation(global.TvSprPlayer_Happy, 200);
    
    event_play_oneshot("event:/SFX/ui/kashingcombo");
    playComboVariable = -4;
    instance_destroy(obj_comboEndEffect);
    
    with (instance_create(832, 265, obj_comboEndEffect, 
    {
        title: max(c_title, 0)
    }))
    {
        comboScore = global.ComboScore;
        subtractBy = round(global.ComboScore / 50);
        
        if (subtractBy < 25)
            subtractBy = 25;
        
        comboScoreMax = comboScore;
    }
    
    oldComboTitle = 0;
    global.ComboScore = 0;
    global.ComboLost = true;
    global.Combo = 0;
}

if (inputBufferSecondJump < 8)
    inputBufferSecondJump++;

if (inputBufferHighJump < 8)
    inputBufferHighJump++;

inputBufferSecondJump = min(inputBufferSecondJump + 1, 8);
inputBufferHighJump = min(inputBufferHighJump + 1, 8);

if (keyParticles)
    instance_create(x + irandom_range(-20, 20), y + irandom_range(-30, 30), obj_keyeffect);

if (!hurted)
    image_alpha = 1;

var machslide_check = sprite_index == spr_machslideboost3 || sprite_index == spr_machslideboost3FallStart || sprite_index == spr_machslideboost3Fall;
var killmove_states = [(33 << 0), (22 << 0), (89 << 0), (88 << 0), (56 << 0), (47 << 0), (57 << 0), (58 << 0), (81 << 0), (65 << 0), (61 << 0), (67 << 0), (16 << 0), (39 << 0), (53 << 0), (42 << 0), (37 << 0), (27 << 0), (4 << 0), (93 << 0), (7 << 0)];

if (array_contains(killmove_states, state) || (state == (34 << 0) && machslide_check) || (state == (3 << 0) && movespeed >= 12) || (state == (48 << 0) && vsp < 0) || (state == (90 << 0) && vsp > 0) || (state == (54 << 0) && sprite_index != spr_tumblestart && sprite_index != spr_tumbleend) || (state == (6 << 0) && verticalMovespeed > 8) || (state == (41 << 0) && abs(movespeed) >= 10) || (state == (12 << 0) && mach3Roll > 0) || (state == (15 << 0) && sprite_index == spr_piledriver) || ((state == (15 << 0) && sprite_index == spr_piledriverIntro) && sprite_index != spr_player_PZ_werecotton_drill_h))
    instakillmove = true;
else
    instakillmove = false;

if ((state != (24 << 0) && state != (30 << 0)) || vsp < 0)
    fallingAnimation = 0;

if (state != (38 << 0) && state != (1 << 0) && state != (34 << 0))
    slamHurt = 0;

if (state != (36 << 0))
    player_hurt_buffer = 100;

if (state != (1 << 0) && state != (34 << 0))
    machSlideAnim = false;

if (state != (1 << 0))
{
    idle = 0;
    dashdust = 0;
}

if (state != (31 << 0) && state != (24 << 0) && state != (10 << 0) && state != (1 << 0) && state != (32 << 0) && state != (33 << 0) && state != (21 << 0) && state != (14 << 0) && state != (47 << 0) && state != (57 << 0) && state != (58 << 0))
    momentum = false;

if (state != (32 << 0))
    machPunchAnim = false;

if (state != (24 << 0))
    ladderBuffer = 0;

if (state != (24 << 0) && state != (18 << 0))
    stompAnim = false;

if (state != (53 << 0))
    slipSlopeBounces = 7;

if (state == (33 << 0) || state == (32 << 0) || state == (27 << 0) || (state == (12 << 0) && mach3Roll > 0) || state == (4 << 0))
{
    machAfterimage--;
    
    if (machAfterimage <= 0)
    {
        with (create_afterimage(choose((1 << 0), (2 << 0)), xscale, true))
            mach3Afterimage = true;
        
        machAfterimage = 6;
    }
}
else
{
    machAfterimage = 0;
}

var up_arrow = ((place_meeting(x, y, obj_door) && !(place_meeting(x, y, obj_doorblocked) || place_meeting(x, y, obj_keydoor) || place_meeting(x, y, obj_janitorDoor))) || (place_meeting(x, y, obj_startGate) && state != (25 << 0)) || place_meeting(x, y, obj_soundTest_Button) || (place_meeting(x, y, obj_janitorDoor) && (global.janitorRudefollow || ds_list_find_index(global.SaveRoom, instance_place(x, y, obj_janitorDoor).id) != -1)) || (place_meeting(x, y, obj_keydoor) && (ds_list_size(global.KeyFollowerList) > 0 || ds_list_find_index(global.SaveRoom, instance_place(x, y, obj_keydoor).id) != -1)) || (place_meeting(x, y, obj_exitgate) && global.panic == 1)) && !instance_exists(obj_uparrow) && scr_solid(x, y + 1) && state == (1 << 0);

if (up_arrow)
    instance_create(x, y, obj_uparrow);

if (state == (33 << 0) && !instance_exists(obj_speedlines))
{
    instance_create(x, y, obj_speedlines, 
    {
        playerID: id
    });
}

if (state == (7 << 0))
{
    blueAfterimage--;
    
    if (blueAfterimage <= 0)
    {
        with (create_afterimage((8 << 0), xscale, true))
            mach3Afterimage = true;
        
        blueAfterimage = 6;
    }
}
else
{
    blueAfterimage = 0;
}

if (superTauntBuffer >= 10 && state != (18 << 0) && global.Combo >= 10)
{
    if (!superTauntCharged)
        event_play_oneshot("event:/SFX/player/gotsupertaunt", x, y);
    
    superTauntCharged = true;
}

if (place_meeting(x, y + 9, obj_molassesGround))
{
    if (hsp != 0 && (floor(image_index) % 4) == 0 && grounded)
    {
        create_debris(x, y + 43, spr_molassesgoop);
        event_play_oneshot("event:/SFX/player/goopfloor", x, y);
    }
    
    if (state == (6 << 0) && vsp < 0)
        state = (1 << 0);
    
    if (vsp < 0 && grounded)
    {
        vsp /= 2;
        create_debris(x, y + 43, spr_molassesgoop);
        event_play_oneshot("event:/SFX/player/goopjump", x, y);
    }
}

if (place_meeting(x, y + 3, obj_icyGround) && grounded)
{
    if (sign(hsp) != sign(prevHsp))
        slideHsp += (prevHsp / 1.5);
    
    if (scr_slope())
        slideHsp += (0.25 * slopeMomentum_acceleration());
}
else if (grounded)
{
    slideHsp = approach(slideHsp, 0, 0.35);
}

if (!grounded)
    slideHsp = approach(slideHsp, 0, 0.6);

slideHsp = approach(slideHsp, 0, 0.15);
slideHsp = clamp(abs(slideHsp), 0, 3) * sign(slideHsp);

if (state == (6 << 0))
    slideHsp = 0;

dashpadBuffer = max(dashpadBuffer - 1, 0);
kungBuffer = max(kungBuffer - 1, 0);
global.HighestCombo = max(global.Combo, global.HighestCombo);

if (playerNoInputBuffer < playerNoInputBufferMax)
    playerNoInputBuffer++;

if (any_input_check())
    playerNoInputBuffer = 0;
