/// @description Start trail

if (focused_point == noone)
{
	return;
}

is_current_trail_active = true;

current_trail.point1 = focused_point.point_index;
