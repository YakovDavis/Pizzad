/// @description Reset pizza

if (is_being_dragged)
{
	is_being_dragged = false;
	x = initial_x; // TODO: lerp
	y = initial_y;
	
	with (obj_pizza_point)
	{
		pizza_x = initial_pizza_x;
		pizza_y = initial_pizza_y;
		topping = E_TOPPING_STATE.NONE;
	}
}

cheese = E_CHEESE_STATE.NONE;

ketchup_trails = [];

is_current_trail_active = false;

focused_point = noone;

is_being_dragged = false;

x = initial_x;
y = initial_y;

current_trail =
{
	point1 : -1,
	x2 : 0,
	y2 : 0,
	strip_offset : 0
};