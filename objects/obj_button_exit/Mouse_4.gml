/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

audio_play_sound(snd_button_pressed,0,false);

if(room == rm_menu){

game_end();

}else{
	
room_goto(rm_menu);

}




