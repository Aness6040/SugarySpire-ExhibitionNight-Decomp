var totalChoices = array_length(global.dialogchoices);

if (obj_parent_player.key_up2 && choice_selected != 0)
    choice_selected--;

if (obj_parent_player.key_down2 && choice_selected != (totalChoices - 1))
    choice_selected++;

draw_set_font(font_console);
draw_set_halign(fa_left);
draw_set_color(c_black);
var _cx = 50;
var _cy = 380;

if (msg_text != -4)
    draw_text(_cx, _cy + 30, msg_text);

var i = totalChoices - 1;

while (i > -1)
{
    var setChoice = global.dialogchoices[i];
    var setText = setChoice[0];
    
    if (choice_selected == i)
        draw_set_color(c_white);
    
    draw_text(_cx, _cy, setText);
    draw_set_color(c_black);
    _cy -= 30;
    i--;
}
