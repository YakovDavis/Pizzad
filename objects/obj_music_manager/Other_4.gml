/// @description Start room music

if (room == rm_menu)
{
	//audio_play_sound(snd_game_over_3,0,false);
	if (!audio_is_playing(snd_pizza_d_menu_theme_v1))
	{
		audio_play_sound(snd_pizza_d_menu_theme_v1,0,true);
	}
	event_user(0);
}
else if (room == rm_main_game)
{
	audio_play_sound(snd_pizza_d__main_theme_a__v1,0,true);
	event_user(0);
}
