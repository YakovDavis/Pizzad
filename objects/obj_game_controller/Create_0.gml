/// @description Game Init

randomize();

order_queue = [];

order_anchors = [];

next_order_time = current_time;
is_order_coming = false;

customer_number = 1;

pizzas_pool_grid = load_csv("pizzas_pool.csv");
difficulty_grid = load_csv("difficulty.csv");
time_grid = load_csv("time.csv");
