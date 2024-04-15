/// @description Insert description here

if (room == rm_main_game)
{
	with (obj_order_anchor)
	{
		obj_game_controller.order_anchors[order_index] = self;
	}
	// TODO: validate
	
	instance_create_layer(0, 0, "Cursor", obj_cursor);
	event_user(2);
}
