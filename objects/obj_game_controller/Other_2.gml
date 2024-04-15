/// @description Pre-Init

enum E_CHEESE_STATE
{
    NONE,
	MOZZARELLA,
	CHEDDAR,
	BLUE,
	MAX
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
	TOMATOES,
	MAX
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
	JUSTICE,
	MAX
}

#macro MAX_TOPPINGS_IN_HAND 5

global.master_volume = 1.0;
global.music_volume = 0.2;
global.sfx_volume = 0.5;

global.is_paused = false;
