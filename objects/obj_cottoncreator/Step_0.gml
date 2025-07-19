var target_player = get_primaryPlayer();

if (global.freezeframe || instance_exists(obj_cutsceneManager) || target_player.state == (70 << 0))
    exit;

visible = !(target_player.sprite_index == target_player.spr_cottonIntroLeft || target_player.sprite_index == target_player.spr_cottonIntroRight);

if (target_player.state == (47 << 0) || target_player.state == (58 << 0) || target_player.state == (56 << 0) || target_player.state == (57 << 0))
    sprite_index = spr_cottonmakerzzz;
else
    sprite_index = spr_cottonmaker;
