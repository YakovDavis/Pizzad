/// @description Load topping into cursor

if (!instance_exists(obj_cursor))
{
	return;
}

with (obj_pizza_point)
	{
		should_ring_be_visible = true;
	}

if (obj_cursor.cursor_state == E_CURSOR_STATE.TOPPING &&
	obj_cursor.cursor_cheese_state == E_CHEESE_STATE.NONE &&
	obj_cursor.cursor_topping_state == topping_type)
{
	obj_cursor.cursor_topping_count = clamp(obj_cursor.cursor_topping_count + 1, 1, MAX_TOPPINGS_IN_HAND);
}
else
{
	obj_cursor.cursor_state = E_CURSOR_STATE.TOPPING;
	obj_cursor.cursor_cheese_state = E_CHEESE_STATE.NONE;
	obj_cursor.cursor_topping_state = topping_type;
	obj_cursor.cursor_topping_count = 1;
}

audio_play_sound(snd_button_pressed,0,false);