/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


audio_play_sound(snd_button_pressed,0,false);

global.should_mute_on_leave = false;

room_goto(rm_settings);