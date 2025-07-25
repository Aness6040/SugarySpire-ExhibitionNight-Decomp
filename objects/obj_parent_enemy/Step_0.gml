scr_baddie_collide_destroyables();
downSlope = state != (6 << 0);

if (doCollision && state != (5 << 0) && state != (7 << 0) && state != (8 << 0))
    scr_collision();

canBreakBlocks = false;

if (global.freezeframe && state != (9 << 0))
{
    frozenState = state;
    frozenSpriteIndex = sprite_index;
    frozenImageIndex = image_index;
    frozenImageSpeed = image_speed;
    frozenMoveSpeed = movespeed;
    frozenGrav = grav;
    frozenHsp = hsp;
    frozenVsp = vsp;
    state = (9 << 0);
}

switch (state)
{
    case (0 << 0):
        state_enemyNormal();
        break;
    
    case (1 << 0):
        state_enemyTurn();
        break;
    
    case (2 << 0):
        if (is_callable(enemyState_Attack))
        {
            scr_conveyorBeltKinematics();
            enemyState_Attack();
        }
        
        break;
    
    case (3 << 0):
        state_enemyScared();
        break;
    
    case (4 << 0):
        state_enemyStunned();
        break;
    
    case (5 << 0):
        if (baddieStunTimer < 200)
            baddieStunTimer = 200;
        
        vsp = 0;
        hsp = 0;
        movespeed = 0;
        sprite_index = baddieSpriteStun;
        image_speed = 0.35;
        grounded = false;
        break;
    
    case (6 << 0):
        state_enemyHit();
        break;
    
    case (7 << 0):
        state_enemyWaiting_Panic();
        break;
    
    case (8 << 0):
        state_enemyWaiting_Box();
        break;
    
    case (9 << 0):
        if (markedForDeath)
            sprite_index = baddieSpriteStun;
        
        if (!global.freezeframe)
        {
            state = frozenState;
            sprite_index = frozenSpriteIndex;
            image_index = frozenImageIndex;
            image_speed = frozenImageSpeed;
            movespeed = frozenMoveSpeed;
            grav = frozenGrav;
            hsp = frozenHsp;
            vsp = frozenVsp;
        }
        else
        {
            vsp = 0;
            hsp = 0;
            grav = 0;
            image_speed = 0;
            movespeed = 0;
        }
        
        break;
    
    default:
        if (is_callable(enemyCustomStates))
            enemyCustomStates();
        
        break;
}

enemyAttackTimer = max(enemyAttackTimer - 1, 0);

if (baddieCollisionBoxEnabled)
    scr_baddieCollisionBox(baddieCollisionMask);

if (canGetScared)
    scr_scareenemy();

if (state != (2 << 0))
    hasAttacked = false;

if (markedForDeath && !global.freezeframe && !obj_camera.NextFreeze)
{
    create_particle(x, y, spr_genericPoofEffect);
    instance_destroy();
}

if (y > (room_height + 64))
    instance_destroy();

if (hasSquashedX)
{
    squashValueX = approach(squashValueX, 0.4, 0.15);
    
    if (squashValueX >= 0.4)
        hasSquashedX = false;
}
else
{
    squashValueX = approach(squashValueX, 0, 0.05);
}

if (hasSquashedY)
{
    squashValueY = approach(squashValueY, 0.4, 0.15);
    
    if (squashValueY >= 0.4)
        hasSquashedY = false;
}
else
{
    squashValueY = approach(squashValueY, 0, 0.05);
}

if (flash && alarm[0] <= 0)
    alarm[0] = room_speed * 0.15;

if (tauntBuffer)
{
    if (obj_parent_player.state != (18 << 0) && obj_parent_player.state != (51 << 0))
    {
        tauntBuffer = false;
        baddieStunTimer = 0;
        baddieScareBuffer = 0;
        enemyAttackTimer = 0;
        
        if (is_callable(enemyAttack_TriggerEvent))
            enemyAttack_TriggerEvent();
    }
}

if (state != (3 << 0) && state != (9 << 0))
    baddieScareBuffer = 0;

if (doRedAfterImage && redAfterImagebuffer-- < 0)
{
    create_afterimage((7 << 0), image_xscale);
    redAfterImagebuffer = redAfterImagebufferMax;
}

doRedAfterImage = false;
wetTimer = approach(wetTimer, 0, 1);

if (wetTimer > 0 && wetTimerEffect-- <= 0)
    wetTimerEffect = 3;

if (baddieInvincibilityBuffer > 0 && !global.freezeframe)
    baddieInvincibilityBuffer--;

if (jumpedFromBlock && vsp >= 0 && grounded && invincibleBaddie)
{
    invincibleBaddie = false;
    jumpedFromBlock = false;
}

if (((grounded && vsp > 0) || isFlyingEnemy) && sprite_index == baddieSpriteWalk && sprite_animation_end() && sign(hsp) == sign(image_xscale))
    create_particle(x - (image_xscale * 20), y + 43, spr_cloudEffect);

scr_enemySounds_update();
