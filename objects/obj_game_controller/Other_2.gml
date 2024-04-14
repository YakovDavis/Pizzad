/// @description Pre-Init

enum E_CHEESE_STATE
{
    NONE,
	MOZZARELLA,
	CHEDDAR,
	BLUE
}

enum E_TOPPING_STATE
{
    NONE,
	SALAMI,
	MUSHROOM,
	PICKLES,
	GREEN_OLIVE,
	BLACK_OLIVE,
	PINEAPPLE,
	CHICKEN,
	BELL_PEPPER,
	ANCHOVY,
	JALAPENO,
	MEATBALL,
	TOMATOES
}

enum E_KETCHUP_PATTERN
{
	TRIANGLE,
	SQUARE,
	PENTAGRAM,
	INV_PENTAGRAM,
	HEXAGRAM,
	GEBO,
	DAGAZ,
	TWO_SQUARES,
	JUSTICE
}

#macro MAX_TOPPINGS_IN_HAND 5

global.master_volume = 1.0;
global.sfx_volume = 1.0;
global.music_volume = 1.0;

global.is_paused = false;
