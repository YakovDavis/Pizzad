/// @description Insert description here

if (!instance_exists(obj_game_controller))
{
	return;
}

if (!instance_exists(obj_pizza))
{
	return;
}

if (obj_pizza.is_being_dragged)
{
	with (obj_game_controller)
	{
		event_user(0);
	}
}
