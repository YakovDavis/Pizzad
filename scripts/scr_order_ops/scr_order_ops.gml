/// @function get_random_ingredient_types(_num);
/// @param {Integer} _num Nuber of ingedients
/// @returns {Array}

function get_random_ingredient_types(_num)
{
	result = [];
	
	if (_num >= E_TOPPING_STATE.MAX - 1)
	{
		show_error("Incorrect number of ingredients requested", false);
		return result;
	}
	
	var _used = []
	for (var _i = 0; _i < _num; _i++)
	{
		var _chosen_index = -1;
		do
		{
			_chosen_index = random_range(E_TOPPING_STATE.NONE + 1, E_TOPPING_STATE.MAX - 1)
		} until (array_get_index(_used, _chosen_index) < 0)
		array_push(_used, _chosen_index);
	}
}

/// @function generate_order(_pool, _estimate);
/// @param {Id.DsGrid} _pool Pizzas pool
/// @param {Real} _estimate Difficulty estimate
/// @returns {Struct}

function generate_order(_pool, _estimate)
{
	result = {};
	
	if (!instance_exists(obj_game_controller))
	{
		return result;
	}
	
	var _matching_rows = [];
	var _height = ds_grid_height(obj_game_controller.pizzas_pool_grid);
	for (var _row = 1; _row < _height; _row++)
	{
		if (real(obj_game_controller.pizzas_pool_grid[# 5, _row]) == _estimate)
		{
			array_push(_matching_rows, _row);
		}
	}
	
	if (array_length(_matching_rows) < 1)
	{
		return result;
	}
	
	var _chosen_row = round(random(array_length(_matching_rows)));
	
	var _ingredients_count = obj_game_controller.pizzas_pool_grid[# 0, _chosen_row];
	var _ketchup_pattern_index = obj_game_controller.pizzas_pool_grid[# 1, _chosen_row];
}
