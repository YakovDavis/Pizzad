/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_game_controller))
{
	return;
}

if (!instance_exists(obj_pizza))
{
	return;
}

//if (obj_pizza.is_being_dragged)
//{
audio_play_sound(snd_pizza_cat_eating,0,false,global.master_volume*global.sfx_volume);
	with (obj_pizza)
	{
		event_user(2);
	}


