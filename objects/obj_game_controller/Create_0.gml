/// @description Game Init

randomize();

order_queue = [];

order_anchors = [];

next_order_time = current_time;
is_order_coming = false;

customer_number = 1;

annoyance_meter = 0.0;

game_score = 0;

pizzas_pool_grid = load_csv("pizzas_pool.csv");
difficulty_grid = load_csv("difficulty.csv");
time_grid = load_csv("time.csv");
params_grid = load_csv("params.csv");

order_timer_length = real(params_grid[# 1, 1]);
annoyance_down_speed = real(params_grid[# 1, 2]);
annoyance_overflow_speed = real(params_grid[# 1, 3]);
annoyance_wrong_pizza = real(params_grid[# 1, 4]);
annoyance_order_expired = real(params_grid[# 1, 5]);
hurry_up_threshold = real(params_grid[# 1, 6]);
hurry_up_min_length = real(params_grid[# 1, 7]);
