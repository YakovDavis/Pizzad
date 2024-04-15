/// @description Render

draw_sprite_ext(sprite_index, 0, x, y, icon_scale, icon_scale, 0, c_white, icon_alpha);

switch (cheese)
{
	case (E_CHEESE_STATE.MOZZARELLA):
		draw_sprite_ext(spr_cheese_mozzarella_full, 0, x, y, icon_scale, icon_scale, 0, c_white, icon_alpha);
		break;
	case (E_CHEESE_STATE.CHEDDAR):
		draw_sprite_ext(spr_cheese_cheddar_full, 0, x, y, icon_scale, icon_scale, 0, c_white, icon_alpha);
		break;
	case (E_CHEESE_STATE.BLUE):
		draw_sprite_ext(spr_cheese_blue_full, 0, x, y, icon_scale, icon_scale, 0, c_white, icon_alpha);
		break;
}

switch (ketchup_pattern)
{
	case E_KETCHUP_PATTERN.TRIANGLE:
		draw_sprite_ext(spr_pattern_triangle, 0, x, y, icon_scale, icon_scale, 0, c_white, icon_alpha);
		break;
	case E_KETCHUP_PATTERN.SQUARE:
		draw_sprite_ext(spr_pattern_square, 0, x, y, icon_scale, icon_scale, 0, c_white, icon_alpha);
		break;
	case E_KETCHUP_PATTERN.PENTAGRAM:
		draw_sprite_ext(spr_pattern_pentagram, 0, x, y, icon_scale, icon_scale, 0, c_white, icon_alpha);
		break;
	case E_KETCHUP_PATTERN.INV_PENTAGRAM:
		draw_sprite_ext(spr_pattern_inv_pentagram, 0, x, y, icon_scale, icon_scale, 0, c_white, icon_alpha);
		break;
	case E_KETCHUP_PATTERN.JUSTICE:
		draw_sprite_ext(spr_pattern_justice, 0, x, y, icon_scale, icon_scale, 0, c_white, icon_alpha);
		break;
	case E_KETCHUP_PATTERN.GEBO:
		draw_sprite_ext(spr_pattern_gebo, 0, x, y, icon_scale, icon_scale, 0, c_white, icon_alpha);
		break;
	case E_KETCHUP_PATTERN.TWO_SQUARES:
		draw_sprite_ext(spr_pattern_two_squares, 0, x, y, icon_scale, icon_scale, 0, c_white, icon_alpha);
		break;
	case E_KETCHUP_PATTERN.HEXAGRAM:
		draw_sprite_ext(spr_pattern_hexagram, 0, x, y, icon_scale, icon_scale, 0, c_white, icon_alpha);
		break;
	case E_KETCHUP_PATTERN.DAGAZ:
		draw_sprite_ext(spr_pattern_hexagram, 0, x, y, icon_scale, icon_scale, 0, c_white, icon_alpha);
		break;
}

if (!instance_exists(obj_pizza))
{
	return;
}

for (var _i = 0; _i < array_length(toppings); _i++)
{
	var _point = obj_pizza.pizza_points[toppings[_i].point];
	
	draw_sprite_ext(get_topping_sprite(toppings[_i].topping), 0, x + (_point.x - obj_pizza.initial_x) * icon_scale, y + (_point.y - obj_pizza.initial_y) * icon_scale, icon_scale, icon_scale, 0, c_white, icon_alpha);
}
