/// @description Insert description here

if (room == rm_menu && os_browser != browser_not_a_browser)
{
	instance_destroy(self);
	return;
}

// Inherit the parent event
event_inherited();

