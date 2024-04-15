/// @description Start ketchup trail

if (!instance_exists(obj_pizza))
{
	return;
}

if (!instance_exists(obj_cursor))
{
	return;
}

if (obj_cursor.cursor_state == E_CURSOR_STATE.TOPPING)
{
	if (topping == E_TOPPING_STATE.NONE)
	{
		topping = obj_cursor.cursor_topping_state;
		obj_cursor.cursor_topping_count -= 1;
		if (obj_cursor.cursor_topping_count < 1)
		{
			obj_cursor.cursor_state = E_CURSOR_STATE.MOVE;
			obj_cursor.cursor_topping_state = E_TOPPING_STATE.NONE;
			with (obj_pizza_point)
			{
				should_ring_be_visible = false;
			}
		}
	}
} else if (obj_cursor.cursor_state == E_CURSOR_STATE.MOVE)
{
	if (topping != E_TOPPING_STATE.NONE)
	{
		topping = E_TOPPING_STATE.NONE
	}
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

audio_play_sound(snd_ketchup,0,false,global.master_volume*global.sfx_volume);