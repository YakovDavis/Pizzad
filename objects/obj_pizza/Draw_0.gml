/// @description Insert description here

draw_self();

for (var _i = 0; _i < array_length(ketchup_trails); _i++)
{
	var _x1 = pizza_points[ketchup_trails[_i].point1].x - initial_x + x;
	var _y1 = pizza_points[ketchup_trails[_i].point1].y - initial_y + y;
	var _x2 = pizza_points[ketchup_trails[_i].point2].x - initial_x + x;
	var _y2 = pizza_points[ketchup_trails[_i].point2].y - initial_y + y;
	var _rot = point_direction(_x1, _y1, _x2, _y2) - 90;
	var _height = point_distance(_x1, _y1, _x2, _y2);
	draw_sprite_general(spr_ketchup_trail, 0, 0, 0, sprite_get_width(spr_ketchup_trail), _height, _x1 -
						lengthdir_x(sprite_get_width(spr_ketchup_trail) / 2, _rot), _y1 -
						lengthdir_y(sprite_get_width(spr_ketchup_trail) / 2, _rot), 1, -1, _rot,
						c_white, c_white, c_white, c_white, 1);
}

if (is_current_trail_active)
{
	var _x1 = pizza_points[current_trail.point1].x;
	var _y1 = pizza_points[current_trail.point1].y;
	var _rot = point_direction(_x1, _y1, current_trail.x2 + x, current_trail.y2 + y) - 90;
	var _height = point_distance(_x1, _y1, current_trail.x2 + x, current_trail.y2 + y);
	draw_sprite_general(spr_ketchup_trail, 0, 0, 0, sprite_get_width(spr_ketchup_trail), _height, _x1 -
						lengthdir_x(sprite_get_width(spr_ketchup_trail) / 2, _rot), _y1 -
						lengthdir_y(sprite_get_width(spr_ketchup_trail) / 2, _rot), 1, -1, _rot,
						c_white, c_white, c_white, c_white, 1);
}
