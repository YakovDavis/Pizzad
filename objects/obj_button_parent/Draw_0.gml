/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, is_hovered ? c_ltgray : c_white, 1);

draw_set_font(fnt_menu);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//draw_text(x,y,button_text);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
