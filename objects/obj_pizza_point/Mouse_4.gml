/// @description Start ketchup trail

if (!instance_exists(obj_pizza))
{
	return;
}

if (obj_pizza.is_current_trail_active)
{
	return;
}

obj_pizza.is_current_trail_active = true;
obj_pizza.current_trail.x1 = x - obj_pizza.x;
obj_pizza.current_trail.y1 = y - obj_pizza.y;
