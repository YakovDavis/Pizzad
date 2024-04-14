/// @description Insert description here

if (topping != E_TOPPING_STATE.NONE)
{
	switch (topping)
	{
		case (E_TOPPING_STATE.ANCHOVY):
			draw_sprite(spr_top_anchovy, 0, x - initial_pizza_x + pizza_x, y - initial_pizza_y + pizza_y);
			break;
		case (E_TOPPING_STATE.BELL_PEPPER):
			draw_sprite(spr_top_bell_pepper, 0, x - initial_pizza_x + pizza_x, y - initial_pizza_y + pizza_y);
			break;
		case (E_TOPPING_STATE.BLACK_OLIVE):
			draw_sprite(spr_top_black_olive, 0, x - initial_pizza_x + pizza_x, y - initial_pizza_y + pizza_y);
			break;
		case (E_TOPPING_STATE.CHICKEN):
			draw_sprite(spr_top_chicken, 0, x - initial_pizza_x + pizza_x, y - initial_pizza_y + pizza_y);
			break;
		case (E_TOPPING_STATE.GREEN_OLIVE):
			draw_sprite(spr_top_green_olive, 0, x - initial_pizza_x + pizza_x, y - initial_pizza_y + pizza_y);
			break;
		case (E_TOPPING_STATE.JALAPENO):
			draw_sprite(spr_top_jalapeno, 0, x - initial_pizza_x + pizza_x, y - initial_pizza_y + pizza_y);
			break;
		case (E_TOPPING_STATE.MEATBALL):
			draw_sprite(spr_top_meatball, 0, x - initial_pizza_x + pizza_x, y - initial_pizza_y + pizza_y);
			break;
		case (E_TOPPING_STATE.MUSHROOM):
			draw_sprite(spr_top_mushroom, 0, x - initial_pizza_x + pizza_x, y - initial_pizza_y + pizza_y);
			break;
		case (E_TOPPING_STATE.PICKLES):
			draw_sprite(spr_top_pickles, 0, x - initial_pizza_x + pizza_x, y - initial_pizza_y + pizza_y);
			break;
		case (E_TOPPING_STATE.PINEAPPLE):
			draw_sprite(spr_top_pineapple, 0, x - initial_pizza_x + pizza_x, y - initial_pizza_y + pizza_y);
			break;
		case (E_TOPPING_STATE.SALAMI):
			draw_sprite(spr_top_salami, 0, x - initial_pizza_x + pizza_x, y - initial_pizza_y + pizza_y);
			break;
		case (E_TOPPING_STATE.TOMATOES):
			draw_sprite(spr_top_tomatoes, 0, x - initial_pizza_x + pizza_x, y - initial_pizza_y + pizza_y);
			break;
		default:
			show_error("Invalid topping state", false);
	}
}

if (should_ring_be_visible)
{
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, sprite_color, 1);
}
