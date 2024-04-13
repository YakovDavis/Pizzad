/// @description Reset active ketchup trail

if (!instance_exists(obj_pizza))
{
	return;
}

if (position_meeting(mouse_x, mouse_y, obj_pizza_point))
{
	return;
}

if (obj_pizza.is_current_trail_active)
{
	obj_pizza.is_current_trail_active = false;
}
