/// @description Insert description here

next_order_time = current_time;
is_order_coming = false;

order_queue = [];

order_anchors = [];

customer_number = 1;

game_score = 0;

annoyance_meter = 0.0;

global.should_mute_on_leave = true;

instance_create_layer(0, 0, "Cursor", obj_cursor);

if (room == rm_main_game)
{
	with (obj_order_anchor)
	{
		obj_game_controller.order_anchors[order_index] = self;
	}
	// TODO: validate
	
	event_user(2);
}
