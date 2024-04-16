/// @description Rebuild order preview

with (obj_pizza_icon)
{
	instance_destroy(self);
}

for (var _i = 0; _i < clamp(array_length(order_queue), 0, array_length(order_anchors)); _i++)
{
	var _order = order_queue[_i];
	var _anchor = order_anchors[_i];
	var _icon = instance_create_layer(_anchor.x, _anchor.y, "Orders", obj_pizza_icon);
	_icon.ketchup_pattern = _order.ketchup_pattern;
	_icon.toppings = _order.toppings;
	_icon.cheese = _order.cheese;
	_icon.need_fade_in = _order.icon_fade;
	_icon.ind = _i;
	_order.icon_fade = false;
	_order.icon = _icon;
	_order.timer = 1 - clamp((current_time - _order.timer_start) / order_timer_length, 0, 1);
}
