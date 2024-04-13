/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_cursor))
{
	return;
}

obj_cursor.cursor_state = E_CURSOR_STATE.CHEESE;
obj_cursor.cursor_cheese_state = E_CHEESE_STATE.CHEDDAR;
obj_cursor.cursor_topping_state = E_TOPPING_STATE.NONE;
