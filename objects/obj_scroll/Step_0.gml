/// @description Insert description here

for (var _i = 0; _i < array_length(orders); _i++)
{
	var _order = orders[_i];
	
	if (_order.stop_time < 0)
	{
		return;
	}
	
	if (current_time - _order.stop_time > 5000)
	{
		array_delete(orders, _i, 1);
	}
}
