/// @description Reset cursor to move

cursor_state = E_CURSOR_STATE.MOVE;
cursor_cheese_state = E_CHEESE_STATE.NONE;
cursor_topping_state = E_TOPPING_STATE.NONE;
cursor_topping_count = 0;
cursor_cheese_count = 0;

with (obj_pizza_point)
{
	should_ring_be_visible = false;
}
