/// @description Insert description here

if (topping != E_TOPPING_STATE.NONE)
{
	switch (topping)
	{
		case (E_TOPPING_STATE.ANCHOVY):
			draw_sprite(spr_top_anchovy, 0, x, y);
			break;
	}
}

if (should_ring_be_visible)
{
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, sprite_color, 1);
}
