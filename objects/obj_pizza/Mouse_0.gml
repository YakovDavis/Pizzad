/// @description Pizza drag

if (!instance_exists(obj_cursor))
{
	return;
}

if (obj_cursor.cursor_state == E_CURSOR_STATE.MOVE)
{
	is_being_dragged = true;
	
	with (obj_pizza_point)
	{
		should_ring_be_visible = false;
	}
}
