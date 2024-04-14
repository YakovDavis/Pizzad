/// @description Start ketchup trail

if (!instance_exists(obj_pizza))
{
	return;
}

if (!instance_exists(obj_cursor))
{
	return;
}

if (obj_pizza.is_current_trail_active)
{
	return;
}

if (obj_cursor.cursor_state != E_CURSOR_STATE.KETCHUP)
{
	return;
}

with (obj_pizza)
{
	event_user(0);
}
