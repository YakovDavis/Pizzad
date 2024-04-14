/// @description Load ketchup into cursor

if (!instance_exists(obj_cursor))
{
	return;
}

obj_cursor.cursor_state = E_CURSOR_STATE.KETCHUP;
obj_cursor.cursor_cheese_state = E_CHEESE_STATE.NONE;
obj_cursor.cursor_topping_state = E_TOPPING_STATE.NONE;

with (obj_pizza_point)
{
	should_ring_be_visible = true;
}

audio_play_sound(snd_button_pressed,0,false);