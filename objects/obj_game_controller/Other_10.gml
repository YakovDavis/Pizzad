/// @description Check pizza

if (!instance_exists(obj_pizza))
{
	return;
}

var _success = true;
var _order_index = 0;

for (var _i = 0; _i < array_length(order_queue); _i++)
{
	var _order = order_queue[_i];
	_order_index = _i;
	
	_success = true;
	
	// Cheese check
	if (obj_pizza.cheese != _order.cheese)
	{
		_success = false;
		continue;
	}
	
	// Ketchup check
	var _indices = get_pattern_pizza_indices(_order.ketchup_pattern);
	if (array_length(obj_pizza.ketchup_trails) != array_length(_indices))
	{
		_success = false;
		continue;
	}
	for (var _j = 0; _j < array_length(obj_pizza.ketchup_trails); _j++)
	{
		var _strip_found = false;
		
		for (var _k = 0; _k < array_length(_indices); _k++)
		{
			var _strip = _indices[_k];
			if ((obj_pizza.ketchup_trails[_j].point1 == _strip.p1 && obj_pizza.ketchup_trails[_j].point2 == _strip.p2) || (obj_pizza.ketchup_trails[_j].point1 == _strip.p2 && obj_pizza.ketchup_trails[_j].point2 == _strip.p1))
			{
				_strip_found = true;
				break;
			}
		}
		
		if (!_strip_found)
		{
			_success = false;
			break;
		}
	}
	
	if (!_success)
	{
		continue;
	}
	
	// Toppings check
	for (var _j = 0; _j < array_length(obj_pizza.pizza_points); _j++)
	{
		var _topping_in_order = false;
		for (var _k = 0; _k < array_length(_order.toppings); _k++)
		{
			if (obj_pizza.pizza_points[_j].point_index == _order.toppings[_k].point)
			{
				_topping_in_order = true;
				if (obj_pizza.pizza_points[_j].topping != _order.toppings[_k].topping)
				{
					_success = false;
				}
				break;
			}
		}
		if (!_success)
		{
			break;
		}
		if (!_topping_in_order && obj_pizza.pizza_points[_j].topping != E_TOPPING_STATE.NONE)
		{
			_success = false;
			break;
		}
	}
	
	if (_success)
	{
		break;
	}
}

if (_success)
{
	//show_debug_message("MATCH!");
	game_score += 1;
	if (game_score % 5 == 0 || game_score == 13 || game_score == 69)
	{
		instance_create_layer(0, 0, "Achievements", obj_achievement);
	}
	audio_play_sound(snd_summoning,0,false,global.master_volume*global.sfx_volume);
	
	with (obj_oven)
	{
		event_user(0);
	}
	if (instance_exists(obj_monster_anchor))
	{
		instance_create_layer(obj_monster_anchor.x, obj_monster_anchor.y, "Ketchup", obj_monster);
	}
	with (obj_pizza_icon)
	{
		if (ind = _order_index)
		{
			fade_out_start = current_time;
			good_burn = true;
		}
	}
	array_delete(order_queue, _order_index, 1);
	if (instance_exists(obj_scroll))
	{
		obj_scroll.orders[_order_index].start_time = -1;
		obj_scroll.orders[_order_index].stop_time = current_time;
		obj_scroll.orders[_order_index].good_stop = true;
	}
	alarm_set(1, 150);
}
else
{
	//show_debug_message("MISMATCH!");
	audio_play_sound(snd_pizza_burnning,0,false,global.master_volume*global.sfx_volume);
	
	with (obj_oven)
	{
		event_user(1);
	}
	annoyance_meter += annoyance_wrong_pizza;
	
	if(round(annoyance_meter) >= 5){
	
		instance_create_layer(0,0,"game_over",obj_game_over);
		audio_play_sound(snd_game_over_2,0,false);
		alarm_set(2,150);
	}
}

with (obj_pizza)
{
	event_user(2);
}
