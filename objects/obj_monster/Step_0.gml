/// @description Insert description here

if (!is_moving)
{
	return;
}

move_progress = clamp((current_time - move_start_time) / move_time, 0, 1);

if (move_progress > 0.999)
{
	instance_destroy(self);
}

if (!instance_exists(obj_monster_anchor) || !instance_exists(obj_monster_anchor))
{
	return;
}

x = lerp(obj_monster_anchor.x, obj_door_anchor.x, move_progress);
y = lerp(obj_monster_anchor.y, obj_door_anchor.y, move_progress);
