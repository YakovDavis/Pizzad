/// @description Game Init

randomize();

order_queue = [];

customer_number = 1;

pizzas_pool_grid = load_csv("pizzas_pool.csv");
difficulty_grid = load_csv("difficulty.csv");
time_grid = load_csv("time.csv");
