/// @description Insert description here

image_speed = 0;
image_index = round(random_range(0, image_number - 1));

is_moving = false;

move_start_time = -1;

move_progress = 0;

alarm_set(0, 100);
