/// @description Init state enums

enum E_CURSOR_STATE
{
    MOVE,
	KETCHUP,
	CHEESE,
	TOPPING
}

cursor_state = E_CURSOR_STATE.MOVE;
cursor_cheese_state = E_CHEESE_STATE.NONE;
cursor_topping_state = E_TOPPING_STATE.NONE;
cursor_topping_count = 0;
cursor_cheese_count = 0;