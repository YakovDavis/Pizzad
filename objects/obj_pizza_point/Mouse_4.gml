/// @description Start ketchup trail

if (!instance_exists(obj_pizza))
{
	return;
}

if (obj_pizza.is_current_trail_active)
{
	return;
}

with (obj_pizza)
{
	event_user(0);
}
