/// @function get_topping_sprite(_topping);
/// @param {Any} _topping Topping
/// @returns {Asset.GMSprite}

function get_topping_sprite(_topping)
{
	switch(_topping)
	{
		case (E_TOPPING_STATE.ANCHOVY):
			return spr_top_anchovy;
		case (E_TOPPING_STATE.BELL_PEPPER):
			return spr_top_bell_pepper;
		case (E_TOPPING_STATE.BLACK_OLIVE):
			return spr_top_black_olive;
		case (E_TOPPING_STATE.CHICKEN):
			return spr_top_chicken;
		case (E_TOPPING_STATE.GREEN_OLIVE):
			return spr_top_green_olive;
		case (E_TOPPING_STATE.JALAPENO):
			return spr_top_jalapeno;
		case (E_TOPPING_STATE.MEATBALL):
			return spr_top_meatball;
		case (E_TOPPING_STATE.MUSHROOM):
			return spr_top_mushroom;
		case (E_TOPPING_STATE.PICKLES):
			return spr_top_pickles;
		case (E_TOPPING_STATE.PINEAPPLE):
			return spr_top_pineapple;
		case (E_TOPPING_STATE.SALAMI):
			return spr_top_salami;
		case (E_TOPPING_STATE.TOMATOES):
			return spr_top_tomatoes;
	}
	show_error("Incorrect topping state", false);
	return spr_top_anchovy;
}