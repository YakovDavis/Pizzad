/// @description Insert description here

hurry_up_threshold = 1000000;
hurry_up_min_length = 0;
annoyance = 0;
hurry_up_start = -1;

if (room != rm_main_game)
{
	return;
}

with (obj_game_controller)
{
	other.hurry_up_threshold = hurry_up_threshold;
	other.hurry_up_min_length = hurry_up_min_length;
}
