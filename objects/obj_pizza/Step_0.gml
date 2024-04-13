/// @description Insert description here

if (is_current_trail_active)
{
	current_trail.x2 = clamp(mouse_x, bbox_left, bbox_right) - x;
	current_trail.y2 = clamp(mouse_y, bbox_top, bbox_bottom) - y;
}
