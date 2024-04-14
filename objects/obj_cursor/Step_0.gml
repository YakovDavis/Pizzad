/// @description Insert description here

x = mouse_x;
y = mouse_y;



// Sprite switching from here, no game logic
switch(cursor_state)
{
	case (E_CURSOR_STATE.MOVE):
		sprite_index = spr_cursor;
		return;
	case (E_CURSOR_STATE.KETCHUP):
		sprite_index = spr_cursor_ketchup;
		return;
	default:
}

if (cursor_state == E_CURSOR_STATE.CHEESE)
{
	switch(cursor_cheese_state)
	{
		case (E_CHEESE_STATE.MOZZARELLA):
			sprite_index = spr_cheese_mozzarella;
			return;
		case (E_CHEESE_STATE.CHEDDAR):
			sprite_index = spr_cheese_cheddar;
			return;
		case (E_CHEESE_STATE.BLUE):
			sprite_index = spr_cheese_blue;
			return;
		default:
			show_error("Invalid or empty cheese state", false);
			return;
	}
}
else if (cursor_state == E_CURSOR_STATE.TOPPING)
{
	sprite_index = get_topping_sprite(cursor_topping_state)
}
