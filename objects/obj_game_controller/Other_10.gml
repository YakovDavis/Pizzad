/// @description Check pizza

if (!instance_exists(obj_pizza))
{
	return;
}

var _success = true;

for (var _i = 0; _i < array_length(order_queue); _i++)
{
	var _order = order_queue[_i];
	
	_success = true;
	
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
	show_debug_message("MATCH!");
}
else
{
	show_debug_message("MISMATCH!");
}
