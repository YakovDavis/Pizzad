/// @description Insert description here

draw_self();

for (var _i = 0; _i < array_length(orders); _i++)
{
	var _order = orders[_i];
	if (_order.start_time > -1)
	{
		draw_set_alpha(clamp((abs(current_time - _order.start_time) / text_fade_in_time), 0, 1));
		draw_set_font(fnt_zodiac);
		draw_set_color(c_black);
		draw_text(x + offset_x, y + offset_y + _i * distance_between, _order.text);
		draw_set_alpha(1);
		draw_set_color(c_white);
	}
	else if (_order.stop_time > -1)
	{
		shader_set(sh_burn);
		if (_order.good_stop)
		{
			shader_set_uniform_f_array(burn_color_uniform, [0.639, 0.161, 0.596, 1]);
		}
		else
		{
			shader_set_uniform_f_array(burn_color_uniform, [0.851, 0.337, 0.188, 1]);
		}
		shader_set_uniform_f_array(base_uvs_uniform, font_get_uvs(fnt_zodiac));
		shader_set_uniform_f_array(noise_uvs_uniform, texture_get_uvs(perlin_texture));
		shader_set_uniform_f(burn_time_uniform, (current_time - _order.stop_time) / 200.0);
		texture_set_stage(perlin_noise_uniform, perlin_texture);
		draw_set_color(c_black);
		draw_set_font(fnt_zodiac);
		draw_text(x + offset_x, y + offset_y + _i * distance_between, _order.text);
		draw_set_color(c_white);
		shader_reset();
	}
}
