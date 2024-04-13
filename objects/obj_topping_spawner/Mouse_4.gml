/// @description Load topping into cursor

if (!instance_exists(obj_cursor))
{
	return;
}

obj_cursor.cursor_state = E_CURSOR_STATE.TOPPING;
obj_cursor.cursor_cheese_state = E_CHEESE_STATE.NONE;
obj_cursor.cursor_topping_state = topping_type;
