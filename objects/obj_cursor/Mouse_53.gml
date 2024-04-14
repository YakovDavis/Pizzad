/// @description Remove held item if not click captured

if (cursor_state == E_CURSOR_STATE.MOVE)
{
	return;
}

if (position_meeting(mouse_x, mouse_y, obj_abs_clickable))
{
	return;
}

if (cursor_state == E_CURSOR_STATE.KETCHUP)
{
	cursor_state = E_CURSOR_STATE.MOVE;
	with (obj_pizza_point)
	{
		should_ring_be_visible = false;
	}
	return;
}

if (cursor_state == E_CURSOR_STATE.CHEESE)
{
	cursor_state = E_CURSOR_STATE.MOVE;
	cursor_cheese_state = E_CHEESE_STATE.NONE;
	with (obj_pizza_point)
	{
		should_ring_be_visible = false;
	}
	return;
}

if (cursor_state == E_CURSOR_STATE.TOPPING)
{
	if (cursor_topping_count > 1)
	{
		cursor_topping_count -= 1;
		return;
	}
	cursor_state = E_CURSOR_STATE.MOVE;
	cursor_topping_state = E_TOPPING_STATE.NONE;
	with (obj_pizza_point)
	{
		should_ring_be_visible = false;
	}
	return;
}

