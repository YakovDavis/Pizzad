/// @description Render

fade_in_alpha_multiplier = need_fade_in ? clamp((current_time - fade_in_start) / fade_in_time, 0, 1) : 1.0;

draw_sprite_ext(spr_order_cloud, 0, x, y, 1, 1, 0, c_white, icon_alpha * fade_in_alpha_multiplier);

draw_sprite_ext(sprite_index, 0, x, y, icon_scale, icon_scale, 0, c_white, icon_alpha);

draw_sprite_ext(get_cheese_full_sprite(cheese), 0, x, y, icon_scale, icon_scale, 0, c_white, icon_alpha * fade_in_alpha_multiplier);

draw_sprite_ext(get_ketchup_sprite(ketchup_pattern), 0, x, y, icon_scale, icon_scale, 0, c_white, icon_alpha * fade_in_alpha_multiplier);

if (!instance_exists(obj_pizza))
{
	return;
}

for (var _i = 0; _i < array_length(toppings); _i++)
{
	var _point = obj_pizza.pizza_points[toppings[_i].point];
	
	draw_sprite_ext(get_topping_sprite(toppings[_i].topping), 0, x + (_point.x - obj_pizza.initial_x) * icon_scale, y + (_point.y - obj_pizza.initial_y) * icon_scale, icon_scale, icon_scale, 0, c_white, icon_alpha * fade_in_alpha_multiplier);
}

shader_reset();
