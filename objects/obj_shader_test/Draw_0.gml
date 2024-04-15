/// @description Insert description here

shader_set(sh_burn);
shader_set_uniform_f_array(burn_color_uniform, [1, 0, 1, 1]);
shader_set_uniform_f_array(base_uvs_uniform, font_get_uvs(fnt_menu));
shader_set_uniform_f_array(noise_uvs_uniform, texture_get_uvs(perlin_texture));
shader_set_uniform_f(burn_time_uniform, (current_time - start_time) / 100.0);
texture_set_stage(perlin_noise_uniform, perlin_texture);

draw_set_font(fnt_menu);
draw_text(x, y, "TEST");

shader_reset();
