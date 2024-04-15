/// @description Insert description here
// You can write your code in this editor

var _frac = (mouse_x - (x + lmargin)) / (sprite_width - rmargin - lmargin);

slider_pos = clamp(_frac, 0, 1);
