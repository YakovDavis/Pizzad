/// @description Init

ind = -1;

ketchup_pattern = E_KETCHUP_PATTERN.TRIANGLE;

cheese = E_CHEESE_STATE.NONE;

toppings = [];

timer_state = 1.0;

need_fade_in = false;

fade_in_start = current_time;
fade_in_alpha_multiplier = 0.0;

fade_out_start = -1;
good_burn = false;

perlin_noise_uniform = shader_get_sampler_index(sh_burn, "perlinNoise")
perlin_texture = sprite_get_texture(spr_perlin, 0);

burn_color_uniform = shader_get_uniform(sh_burn, "burnColor");
burn_time_uniform = shader_get_uniform(sh_burn, "burnTime");

base_uvs_uniform = shader_get_uniform(sh_burn, "baseUvs");
noise_uvs_uniform = shader_get_uniform(sh_burn, "noiseUvs");
