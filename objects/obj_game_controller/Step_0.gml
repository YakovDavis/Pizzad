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
	
	for (var _i = 0; _i < array_length(order_queue); _i++)
	{
		var _order = order_queue[_i];
		_order.timer = 1 - clamp((current_time - _order.timer_start) / order_timer_length, 0, 1);
		if (_order.timer < 0.01)
		{
			with (obj_pizza_icon)
			{
				if (ind = _i)
				{
					fade_out_start = current_time;
					good_burn = false;
				}
			}
			array_delete(order_queue, _i, 1);
			if (instance_exists(obj_scroll))
			{
				obj_scroll.orders[_i].start_time = -1;
				obj_scroll.orders[_i].stop_time = current_time;
				obj_scroll.orders[_i].good_stop = false;
			}
			
			annoyance_meter += annoyance_order_expired;
			if(round(annoyance_meter) >= 5)
			{
				instance_create_layer(0,0,"game_over",obj_game_over);
				alarm_set(2,100);
			}
			else
			{
				alarm_set(1, 150);
			}
		}
	}
}
