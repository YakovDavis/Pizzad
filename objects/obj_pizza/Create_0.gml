/// @description Insert description here

if (instance_number(obj_pizza_point) != 10)
{
	show_error("Incorrect number of pizza points placed in room", false);
}
pizza_points = [];
for (var _i = 0; _i < instance_number(obj_pizza_point); ++_i;)
{
    pizza_points[_i] = instance_find(obj_pizza_point, _i);
}

ketchup_trails = [];

is_current_trail_active = false;

current_trail =
{
	x1 : 0,
	y1 : 0,
	x2 : 0,
	y2 : 0,
	sprite_offset : 0
};
