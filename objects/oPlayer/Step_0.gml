key_up = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space);
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));

hsp = (key_right - key_left)*walksp;

vsp += grv;

if (key_up && place_meeting(x,y+1,oDirt))
{
	vsp = jump;
}

if (place_meeting(x+hsp,y,oDirt))
{
	while (!place_meeting(x+sign(hsp),y,oDirt))
	{
		x += sign(hsp);
	}
	hsp = 0;
}

if (place_meeting(x,y+vsp,oDirt))
{
	while (!place_meeting(x,y+sign(vsp),oDirt))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

x += hsp;
y += vsp;