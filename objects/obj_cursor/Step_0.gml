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
	switch(cursor_topping_state)
	{
		case (E_TOPPING_STATE.ANCHOVY):
			sprite_index = spr_top_anchovy;
			return;
		case (E_TOPPING_STATE.BELL_PEPPER):
			sprite_index = spr_top_bell_pepper;
			return;
		case (E_TOPPING_STATE.BLACK_OLIVE):
			sprite_index = spr_top_black_olive;
			return;
		case (E_TOPPING_STATE.CHICKEN):
			sprite_index = spr_top_chicken;
			return;
		case (E_TOPPING_STATE.GREEN_OLIVE):
			sprite_index = spr_top_green_olive;
			return;
		case (E_TOPPING_STATE.JALAPENO):
			sprite_index = spr_top_jalapeno;
			return;
		case (E_TOPPING_STATE.MEATBALL):
			sprite_index = spr_top_meatball;
			return;
		case (E_TOPPING_STATE.MUSHROOM):
			sprite_index = spr_top_mushroom;
			return;
		case (E_TOPPING_STATE.PICKLES):
			sprite_index = spr_top_pickles;
			return;
		case (E_TOPPING_STATE.PINEAPPLE):
			sprite_index = spr_top_pineapple;
			return;
		case (E_TOPPING_STATE.SALAMI):
			sprite_index = spr_top_salami;
			return;
		case (E_TOPPING_STATE.TOMATOES):
			sprite_index = spr_top_tomatoes;
			return;
		default:
			show_error("Invalid or empty topping state", false);
			return;
	}
}
