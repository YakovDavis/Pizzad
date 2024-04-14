/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_sprite(spr_menu_slider_button, 0, x + lmargin + slider_pos * (sprite_width - rmargin - lmargin), y + vertical_offset );

draw_set_font(fnt_menu);
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_text(x - 1000, y + 150, text);