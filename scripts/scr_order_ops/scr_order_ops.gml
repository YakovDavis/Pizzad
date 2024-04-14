/// @function get_random_ingredient_types(_num);
/// @param {Real} _num Nuber of ingedient types
/// @returns {Array<Real>}

function get_random_ingredient_types(_num)
{
	result = [];
	
	if (_num >= E_TOPPING_STATE.MAX - 1)
	{
		show_error("Incorrect number of ingredients requested", false);
		return result;
	}
	
	for (var _i = 0; _i < _num; _i++)
	{
		var _chosen_index = -1;
		do
		{
			_chosen_index = round(random_range(E_TOPPING_STATE.NONE + 1, E_TOPPING_STATE.MAX - 1));
		} until (array_get_index(result, _chosen_index) < 0)
		array_push(result, _chosen_index);
	}
	
	return result;
}

/// @function get_random_ingredients(_num, _num_types);
/// @param {Real} _num Nuber of ingedients
/// @param {Real} _num_types Nuber of ingedient types
/// @returns {Array}

function get_random_ingredients(_num, _num_types)
{
	result = [];
	
	if (_num < _num_types)
	{
		show_error("Num types must be less or equal to num", false);
	}
	
	var _types = get_random_ingredient_types(_num_types);
	for (var _i = 0; _i < array_length(_types); _i++)
	{
		result[_i] = _types[_i]
	}
	
	for (var _i = 0; _i < _num - array_length(_types); _i++)
	{
		var _type_index = random(_num_types - 1);
		array_push(result, _types[_type_index]);
	}
	
	return result;
}

/// @function get_closest_difficulty(_pool, _estimate);
/// @param {Id.DsGrid} _pool Pizzas pool
/// @param {Real} _estimate Difficulty estimate
/// @returns {Real}

function get_closest_difficulty(_pool, _estimate)
{
	var _height = ds_grid_height(_pool)
	var _closest = -1;
	var _distance = 100000;
	for (var _row = 1; _row < _height; _row++)
	{
		var _current = real(_pool[# 5, _row]);
		if (abs(_current - _estimate) < _distance)
		{
			_distance = _current - _estimate;
			_closest = _current;
		}
	}
	if (_closest < 0)
	{
		show_error("Something went wrong in get_closest_difficulty", false);
	}
	return _closest;
}

/// @function generate_order(_pool, _estimate);
/// @param {Id.DsGrid} _pool Pizzas pool
/// @param {Real} _estimate Difficulty estimate
/// @returns {Struct}

function generate_order(_pool, _estimate)
{
	var _result = {};
	
	var _matching_rows = [];
	var _height = ds_grid_height(_pool);
	_estimate = get_closest_difficulty(_pool, _estimate);
	for (var _row = 1; _row < _height; _row++)
	{
		if (real(_pool[# 5, _row]) == _estimate)
		{
			array_push(_matching_rows, _row);
		}
	}
	
	if (array_length(_matching_rows) < 1)
	{
		return _result;
	}
	
	var _chosen_row = _matching_rows[random(array_length(_matching_rows))];
	
	var _ingredients_count = _pool[# 0, _chosen_row];
	var _ketchup_pattern_index = _pool[# 1, _chosen_row];
	
	var _ketchup_pattern = get_pattern_enum(_ketchup_pattern_index);
	
	var _toppings_num = get_pattern_pizza_point_num(_ketchup_pattern);
	
	var _toppings = get_random_ingredients(_toppings_num, _ingredients_count);
	
	_result.ketchup_pattern = _ketchup_pattern;
	_result.toppings = _toppings;
	
	return _result;
}
