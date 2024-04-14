/// @description Game Init

randomize();

order_queue = [];

pizzas_pool_grid = load_csv("pizzas_pool.csv");

var _test = generate_order(pizzas_pool_grid, 5);


order_queue[0] = _test;

if(instance_exists(obj_pizza_icon)){
	
obj_pizza_icon.ketchup_pattern = _test.ketchup_pattern;
obj_pizza_icon.toppings = _test.toppings;

}

show_debug_message(_test.ketchup_pattern);

global.master_volume = 1.0;

