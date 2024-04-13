/// @description Insert description here

draw_self();

for (var _i = 0; _i < array_length(ketchup_trails); _i++)
{
	var _rot = arctan2(ketchup_trails[_i].y2 - ketchup_trails[_i].y1,
					   ketchup_trails[_i].x2 - ketchup_trails[_i].x1);
	var _height = sqrt(sqr(ketchup_trails[_i].y2 - ketchup_trails[_i].y1) +
						   sqr(ketchup_trails[_i].x2 - ketchup_trails[_i].x1));
	draw_sprite_general(spr_ketchup_trail, 0, 0, 0, sprite_get_width(spr_ketchup_trail), _height, x - lengthdir_x(sprite_get_width(spr_ketchup_trail) / 2, _rot) - lengthdir_x(sprite_get_width(spr_ketchup_trail) / 2, _rot - 90), y - lengthdir_y(sprite_get_height(spr_ketchup_trail) / 2, _rot) - lengthdir_y(sprite_get_height(spr_ketchup_trail) / 2, _rot - 90), 1, 1, _rot, c_white, c_white, c_white, c_white, 1);
	//draw_sprite_general(spr_ketchup_trail, 0, 0, ketchup_trails[_i].strip_offset,
	//					 sprite_get_width(spr_ketchup_trail), _height,
	//					 ketchup_trails[_i].x1 + x, ketchup_trails[_i].y1 + y, 1, 1,
	//					 _rot, c_white, c_white, c_white, c_white, 1);
}

if (is_current_trail_active)
{
	var _rot = point_direction(current_trail.x1, current_trail.y1, current_trail.x2, current_trail.y2) - 90;
	var _height = point_distance(current_trail.x1, current_trail.y1, current_trail.x2, current_trail.y2);
	draw_sprite_general(spr_ketchup_trail, 0, 0, sprite_get_height(spr_ketchup_trail) - _height, sprite_get_width(spr_ketchup_trail), _height, current_trail.x1 + x -
						lengthdir_x(sprite_get_width(spr_ketchup_trail) / 2, _rot) - lengthdir_x(sprite_get_height(spr_ketchup_trail),
						_rot - 90), current_trail.y1 + y - lengthdir_y(sprite_get_width(spr_ketchup_trail) / 2, _rot) - lengthdir_y(sprite_get_height(spr_ketchup_trail),
						_rot - 90), 1, 1, _rot, c_white, c_white, c_white, c_white, 1);
}
