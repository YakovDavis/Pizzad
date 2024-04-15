/// @description Insert description here

if (room == rm_main_game)
{
	annoyance_meter = clamp(annoyance_meter - annoyance_down_speed, 0, max_annoyance);
	
	if (is_order_coming)
	{
		if (array_length(order_queue) < max_orders)
		{
			if (current_time >= next_order_time)
			{
				is_order_coming = false;
				event_user(2);
			}
		}
		else
		{
			next_order_time += delta_time;
			annoyance_meter += annoyance_overflow_speed;
		}
	}
}
