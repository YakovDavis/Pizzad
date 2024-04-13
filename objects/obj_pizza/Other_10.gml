/// @description Finish trail and send to saved

is_current_trail_active = false;

var _trail_copy =
{
	x1 : current_trail.x1,
	y1 : current_trail.y1,
	x2 : current_trail.x2,
	y2 : current_trail.y2,
	strip_offset : current_trail.strip_offset
};

array_push(ketchup_trails, _trail_copy);
