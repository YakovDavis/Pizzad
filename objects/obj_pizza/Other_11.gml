/// @description Finish trail and send to saved

is_current_trail_active = false;

var _point2 = focused_point.point_index;

var _trail_copy =
{
	point1 : current_trail.point1,
	point2 : _point2,
	strip_offset : current_trail.strip_offset
};

array_push(ketchup_trails, _trail_copy);
