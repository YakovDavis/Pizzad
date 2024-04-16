/// @description Insert description here

if (room == rm_main_game)
{
	with (obj_game_controller)
	{
		other.annoyance = annoyance_meter;
	}
	
	if (annoyance >= hurry_up_threshold)
	{
		if (audio_is_playing(snd_pizza_d__main_theme_a__v1))
		{
			audio_stop_sound(snd_pizza_d__main_theme_a__v1);
			audio_play_sound(snd_pizza_d__main_theme_b__v1,0,true);
			hurry_up_start = current_time;
		}
	}
	else
	{
		if (audio_is_playing(snd_pizza_d__main_theme_b__v1))
		{
			if (current_time - hurry_up_start > hurry_up_threshold)
			{
				audio_stop_sound(snd_pizza_d__main_theme_b__v1);
				audio_play_sound(snd_pizza_d__main_theme_a__v1,0,true);
				hurry_up_start = -1;
			}
		}
	}

	event_user(0);
}
