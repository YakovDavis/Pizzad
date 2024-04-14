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

ketchup_trails = [];

is_current_trail_active = false;

focused_point = noone;

current_trail =
{
	point1 : -1,
	x2 : 0,
	y2 : 0,
	strip_offset : 0
};
