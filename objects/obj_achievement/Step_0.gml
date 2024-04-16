/// @description Insert description here

if (is_dissolving)
{
	alpha = 1 - clamp((current_time - dissolve_start) / dissolve_time, 0, 1);
	if (alpha <= 0.001)
	{
		instance_destroy(self);
	}
}
