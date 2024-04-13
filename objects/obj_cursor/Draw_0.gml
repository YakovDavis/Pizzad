/// @description Insert description here

if (cursor_state = E_CURSOR_STATE.TOPPING)
{
	for (var _i = 0; _i < cursor_topping_count; _i++)
	{
		draw_sprite(sprite_index, 0, x + topping_stack_offset_x * _i, y + topping_stack_offset_y * _i);
	}
	return;
}

draw_self();
