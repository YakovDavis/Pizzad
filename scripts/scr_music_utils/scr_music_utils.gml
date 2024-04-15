// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_snd_music_utils(_sound_index){

switch(_sound_index)
	{
		case (1):
			return snd_monster_1;
		case (2):
			return snd_monster_2;
		case (3):
			return snd_monster_3;
		case (4):
			return snd_monster_4;
		case (5):
			return snd_monster_5;
		case (6):
			return snd_monster_6;
		case (7):
			return snd_monster_7;
		case (8):
			return snd_monster_8;
		case (9):
			return snd_monster_9;
		case (10):
			return snd_monster_10;
		case (11):
			return snd_monster_11;
		
		
	}
	show_error("Incorrect music state", false);
	return snd_monster_1;


}