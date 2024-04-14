/// @description Game Init

randomize();

order_queue = [];

pizzas_pool_grid = load_csv("pizzas_pool.csv");

var _test = generate_order(pizzas_pool_grid, 5);

order_queue[0] = _test;

obj_pizza_icon.ketchup_pattern = _test.ketchup_pattern;
obj_pizza_icon.toppings = _test.toppings;
