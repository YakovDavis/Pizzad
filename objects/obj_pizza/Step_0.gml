/// @description Insert description here

if (is_being_dragged)
{
	x = mouse_x;
	y = mouse_y;
	
	with (obj_pizza_point)
	{
		pizza_x = x;
		pizza_y = y;
	}
}

if (is_current_trail_active)
{
	current_trail.x2 = clamp(mouse_x, bbox_left, bbox_right) - x;
	current_trail.y2 = clamp(mouse_y, bbox_top, bbox_bottom) - y;
}
