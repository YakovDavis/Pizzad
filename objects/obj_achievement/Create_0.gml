/// @description Insert description here

if (game_score == 40)
{
	sprite_index = spr_achv_40;
}
else if (game_score == 20)
{
	sprite_index = spr_achv_20;
}
else if (game_score == 5)
{
	sprite_index = spr_achv_5;
}
else if (game_score == 13)
{
	sprite_index = spr_achv_13;
}
else if (game_score == 69)
{
	sprite_index = spr_achv_69;
}
else if (game_score % 5 == 0)
{
	sprite_index = spr_achv_every5;
}
else
{
	instance_destroy(self);
}

is_dissolving = false;
dissolve_start = -1;
alpha = 1.0;

alarm_set(0, time_before_dissolve);
