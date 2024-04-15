/// @description Init

perlin_noise_uniform = shader_get_sampler_index(sh_burn, "perlinNoise")
perlin_texture = sprite_get_texture(spr_perlin, 0);

burn_color_uniform = shader_get_uniform(sh_burn, "burnColor");
burn_time_uniform = shader_get_uniform(sh_burn, "burnTime");

base_uvs_uniform = shader_get_uniform(sh_burn, "baseUvs");
noise_uvs_uniform = shader_get_uniform(sh_burn, "noiseUvs");

orders = [];

/*order =
{
	ind : 0,
	text : "♈♉♊♓",
	start_time : current_time,
	stop_time : -1,
	good_stop : false;
}*/
