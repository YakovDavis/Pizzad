/// @description Pizza drag

if (!instance_exists(obj_cursor))
{
	return;
}

if (position_meeting(mouse_x, mouse_y, obj_pizza_point))
{
	return;
}

if (obj_cursor.cursor_state == E_CURSOR_STATE.MOVE)
{
	is_being_dragged = true;
}
