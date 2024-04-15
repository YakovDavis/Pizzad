/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_cursor))
{
	return;
}

	obj_cursor.cursor_state = E_CURSOR_STATE.CHEESE;
	obj_cursor.cursor_topping_state = E_TOPPING_STATE.NONE;
	obj_cursor.cursor_cheese_state = cheese_type;
	obj_cursor.cursor_cheese_count = 1;
	
	audio_play_sound(snd_button_pressed,0,false,global.master_volume*global.sfx_volume);