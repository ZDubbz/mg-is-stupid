for (var sx = 0; sx <= mouse_x; sx += 64)
{
	snappedx = sx;
}

for (var sy = 0; sy <= mouse_y; sy += 64)
{
	snappedy = sy;
}


if (mouse_check_button_pressed(mb_left))
{
	instance_create_depth(snappedx,snappedy,depth,oDirt)
}