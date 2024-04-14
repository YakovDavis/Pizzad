/// @description Insert description here

if (topping != E_TOPPING_STATE.NONE)
{
	draw_sprite(get_topping_sprite(topping), 0, x - initial_pizza_x + pizza_x, y - initial_pizza_y + pizza_y);
}

if (should_ring_be_visible)
{
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, sprite_color, 1);
}
