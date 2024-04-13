/// @description Insert description here

if (is_current_trail_active)
{
	var _new_x = clamp(mouse_x, bbox_left, bbox_right);
	var _new_y = clamp(mouse_y, bbox_top, bbox_bottom);
	
	current_trail.x2 = _new_x;
	current_trail.y2 = _new_y;
}
