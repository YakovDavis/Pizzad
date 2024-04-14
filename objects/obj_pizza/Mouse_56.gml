/// @description Stop dragging

if (is_being_dragged)
{
	is_being_dragged = false;
	x = initial_x; // TODO: lerp
	y = initial_y;
	
	with (obj_pizza_point)
	{
		should_ring_be_visible = true;
		pizza_x = initial_pizza_x;
		pizza_y = initial_pizza_y;
	}
}
