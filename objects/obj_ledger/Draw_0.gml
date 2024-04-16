/// @description Insert description here

draw_self();

if (!instance_exists(obj_game_controller))
{
	return;
}

draw_set_font(fnt_revolution);
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_black);
draw_text(x, y + text_vertical_offset - text_distance_between * 2, "Satisfied");
draw_text(x, y + text_vertical_offset - text_distance_between, "customers:");
draw_text(x, y + text_vertical_offset, string(obj_game_controller.game_score));
draw_set_color(c_white);
