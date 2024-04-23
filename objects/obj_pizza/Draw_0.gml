/// @description Insert description here

draw_self();

switch (cheese)
{
	case (E_CHEESE_STATE.MOZZARELLA):
		draw_sprite(spr_cheese_mozzarella_full, 0, x, y);
		break;
	case (E_CHEESE_STATE.CHEDDAR):
		draw_sprite(spr_cheese_cheddar_full, 0, x, y);
		break;
	case (E_CHEESE_STATE.BLUE):
		draw_sprite(spr_cheese_blue_full, 0, x, y);
		break;
}

shader_set(sh_ketchup);
shader_set_uniform_f_array(sprite_size_uniform, [sprite_get_width(spr_ketchup_trail), sprite_get_height(spr_ketchup_trail)]);
shader_set_uniform_f_array(base_uvs_uniform, sprite_get_uvs(spr_ketchup_trail, 0));

for (var _i = 0; _i < array_length(ketchup_trails); _i++)
{
	var _x1 = pizza_points[ketchup_trails[_i].point1].x - initial_x + x;
	var _y1 = pizza_points[ketchup_trails[_i].point1].y - initial_y + y;
	var _x2 = pizza_points[ketchup_trails[_i].point2].x - initial_x + x;
	var _y2 = pizza_points[ketchup_trails[_i].point2].y - initial_y + y;
	var _rot = point_direction(_x1, _y1, _x2, _y2) + 90;
	var _height = point_distance(_x1, _y1, _x2, _y2);
	shader_set_uniform_f(strip_length_uniform, _height);
	draw_sprite_ext(spr_ketchup_trail, 0, _x1, _y1, 1, 1, _rot, c_white, 1);
}

if (is_current_trail_active)
{
	var _x1 = pizza_points[current_trail.point1].x;
	var _y1 = pizza_points[current_trail.point1].y;
	var _rot = point_direction(_x1, _y1, current_trail.x2 + x, current_trail.y2 + y) + 90;
	var _height = point_distance(_x1, _y1, current_trail.x2 + x, current_trail.y2 + y);
	shader_set_uniform_f(strip_length_uniform, _height);
	draw_sprite_ext(spr_ketchup_trail, 0, _x1, _y1, 1, 1, _rot, c_white, 1);
}

shader_reset();
