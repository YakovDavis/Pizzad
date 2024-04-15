/// @description Insert description here

with (obj_game_controller)
{
	for (var _i = 0; _i < array_length(order_queue); _i++)
	{
		if (other.ind = _i)
		{
			other.timer_state = order_queue[_i].timer;
		}
	}
}
