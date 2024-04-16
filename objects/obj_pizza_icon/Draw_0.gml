/// @description Render

if (fade_out_start < 0)
{
	fade_in_alpha_multiplier = need_fade_in ? clamp((current_time - fade_in_start) / fade_in_time, 0, 1) : 1.0;
	
	draw_sprite_ext(spr_order_cloud, 0, x, y, 1, 1, 0, c_white, icon_alpha * fade_in_alpha_multiplier);
	
	draw_sprite_ext(sprite_index, 0, x, y, icon_scale, icon_scale, 0, c_white, icon_alpha * fade_in_alpha_multiplier);
	
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
	
	draw_sprite_ext(spr_bar_outer, 0, x, y + timer_offset_y, icon_scale, icon_scale, 0, c_white, icon_alpha * fade_in_alpha_multiplier);
	draw_sprite_part_ext(spr_bar_inner, 0, 0, 0, sprite_get_width(spr_bar_inner) * timer_state, sprite_get_height(spr_bar_inner), x - sprite_get_xoffset(spr_bar_inner) / 2, y + timer_offset_y, icon_scale, icon_scale, c_white, fade_in_alpha_multiplier);
}
else
{
	shader_set(sh_burn);
	shader_set_uniform_f_array(burn_color_uniform, [1, 0, 1, 1]);
	if (good_burn)
	{
		shader_set_uniform_f_array(burn_color_uniform, [0.639, 0.161, 0.596, 1]);
	}
	else
	{
		shader_set_uniform_f_array(burn_color_uniform, [0.851, 0.337, 0.188, 1]);
	}
	shader_set_uniform_f_array(noise_uvs_uniform, texture_get_uvs(perlin_texture));
	shader_set_uniform_f(burn_time_uniform, (current_time - fade_out_start) / 100.0);
	texture_set_stage(perlin_noise_uniform, perlin_texture);
	
	shader_set_uniform_f_array(base_uvs_uniform, sprite_get_uvs(spr_order_cloud, 0));
	draw_sprite_ext(spr_order_cloud, 0, x, y, 1, 1, 0, c_white, icon_alpha);
	
	shader_set_uniform_f_array(base_uvs_uniform, sprite_get_uvs(sprite_index, 0));
	draw_sprite_ext(sprite_index, 0, x, y, icon_scale, icon_scale, 0, c_white, icon_alpha);
	
	var _cheese_sprite = get_cheese_full_sprite(cheese);
	shader_set_uniform_f_array(base_uvs_uniform, sprite_get_uvs(_cheese_sprite, 0));
	draw_sprite_ext(_cheese_sprite, 0, x, y, icon_scale, icon_scale, 0, c_white, icon_alpha);
	
	var _ketchup_sprite = get_ketchup_sprite(ketchup_pattern);
	shader_set_uniform_f_array(base_uvs_uniform, sprite_get_uvs(_ketchup_sprite, 0));
	draw_sprite_ext(_ketchup_sprite, 0, x, y, icon_scale, icon_scale, 0, c_white, icon_alpha);
	
	if (!instance_exists(obj_pizza))
	{
		return;
	}
	
	for (var _i = 0; _i < array_length(toppings); _i++)
	{
		var _point = obj_pizza.pizza_points[toppings[_i].point];
		var _topping_sprite = get_topping_sprite(toppings[_i].topping);
		shader_set_uniform_f_array(base_uvs_uniform, sprite_get_uvs(_topping_sprite, 0));
		draw_sprite_ext(_topping_sprite, 0, x + (_point.x - obj_pizza.initial_x) * icon_scale, y + (_point.y - obj_pizza.initial_y) * icon_scale, icon_scale, icon_scale, 0, c_white, icon_alpha);
	}
	
	shader_set_uniform_f_array(base_uvs_uniform, sprite_get_uvs(spr_bar_outer, 0));
	draw_sprite_ext(spr_bar_outer, 0, x, y + timer_offset_y, icon_scale, icon_scale, 0, c_white, icon_alpha * fade_in_alpha_multiplier);
	
	shader_reset();
}
