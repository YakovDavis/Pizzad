/// @description Insert description here

if (instance_number(obj_pizza_point) != 10)
{
	show_error("Incorrect number of pizza points placed in room", false);
}
pizza_points = [];
array_resize(pizza_points, instance_number(obj_pizza_point));
for (var _i = 0; _i < instance_number(obj_pizza_point); ++_i;)
{
	var _point = instance_find(obj_pizza_point, _i);
    pizza_points[_point.point_index] = _point;
}

cheese = E_CHEESE_STATE.NONE;

ketchup_trails = [];

is_current_trail_active = false;

focused_point = noone;

is_being_dragged = false;

current_trail =
{
	point1 : -1,
	x2 : 0,
	y2 : 0,
	strip_offset : 0
};

initial_x = x;
initial_y = y;

with (obj_pizza_point)
{
	pizza_x = obj_pizza.x;
	pizza_y = obj_pizza.y;
	initial_pizza_x = obj_pizza.x;
	initial_pizza_y = obj_pizza.y;
}

