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
else if (obj_cursor.cursor_state == E_CURSOR_STATE.CHEESE)
{
	cheese = obj_cursor.cursor_cheese_state;
	obj_cursor.cursor_cheese_state = E_CHEESE_STATE.NONE;
	obj_cursor.cursor_state = E_CURSOR_STATE.MOVE;
}
