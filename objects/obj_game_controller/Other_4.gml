/// @description Insert description here

if (room == rm_settings || room == rm_game)
{
	if(instance_exists(obj_pizza_icon))
	{
		var _test = generate_order(pizzas_pool_grid, 5);
		order_queue[0] = _test;
		obj_pizza_icon.ketchup_pattern = _test.ketchup_pattern;
		obj_pizza_icon.toppings = _test.toppings;
	}
}