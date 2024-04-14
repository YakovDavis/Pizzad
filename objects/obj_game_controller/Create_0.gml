/// @description Game Init

randomize();

order_queue = [];

pizzas_pool_grid = load_csv("pizzas_pool.csv");

var _test = generate_order(pizzas_pool_grid, 11);

show_debug_message(_test.ketchup_pattern);
