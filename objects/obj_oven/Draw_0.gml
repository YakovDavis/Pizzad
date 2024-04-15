/// @description Insert description here

draw_self();

if (!instance_exists(obj_game_controller))
{
	return;
}

var _rounded_annoyance = round(obj_game_controller.annoyance_meter);
if (_rounded_annoyance > 0)
{
	draw_sprite(spr_oven_chimney, _rounded_annoyance - 1, x, y);
}

draw_sprite(fire_sprite, 0, x, y);
