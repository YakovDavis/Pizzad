/// @description Make a new order

var _dificulty_row = customer_number;
while (_dificulty_row >= ds_grid_height(difficulty_grid))
{
	_dificulty_row -= ds_grid_height(difficulty_grid);
}
if (_dificulty_row <= 0)
{
	_dificulty_row = 1;
}
var _difficulty = difficulty_grid[# 1, _dificulty_row];
var _order = generate_order(pizzas_pool_grid, _difficulty);
array_push(order_queue, _order);

var _time_row = customer_number;
while (_time_row >= ds_grid_height(time_grid))
{
	_time_row -= ds_grid_height(time_grid);
}
if (_time_row <= 0)
{
	_time_row = 1;
}
alarm_set(0, time_grid[# 1, _time_row]);
