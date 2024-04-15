/// @description Insert description here

image_speed = 0;
image_index = round(random_range(0, image_number - 1));

is_moving = false;

move_start_time = -1;

move_progress = 0;



sound_index = round(random_range(1, 11));
sound_number = get_snd_music_utils(sound_index);
audio_play_sound(sound_index,0,false,global.master_volume*global.sfx_volume);
alarm_set(0, 100);
