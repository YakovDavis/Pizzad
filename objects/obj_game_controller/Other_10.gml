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
	for (var _j = 0; _j < array_length(obj_pizza.ketchup_trails); _j++)
	{
		
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
