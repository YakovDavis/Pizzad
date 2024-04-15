/// @description Finish trail and send to saved

is_current_trail_active = false;

if (focused_point == noone)
{
	return;
}

var _point2 = focused_point.point_index;

if (current_trail.point1 == _point2)
{
	return;
}

for (var _i = 0; _i < array_length(ketchup_trails); _i++)
{
	var _trail = ketchup_trails[_i];
	if ((_trail.point1 == current_trail.point1 && _trail.point2 == _point2) ||
		(_trail.point2 == current_trail.point1 && _trail.point1 == _point2))
	{
		return;
	}
}

var _trail_copy =
{
	point1 : current_trail.point1,
	point2 : _point2,
	strip_offset : current_trail.strip_offset
};

array_push(ketchup_trails, _trail_copy);
