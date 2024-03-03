/// @description Insert description here
// You can write your code in this editor




if (mouse_check_button_pressed(mb_right)) //right click
{
	if (window_get_fullscreen())
	{
		window_set_fullscreen(false);
		show_debug_message("Full screen disabled");
		
	}
	else
	{
		window_set_fullscreen(true);
		show_debug_message("Full screen enabled");
	}
} //toggle fullscreen. Code provided by Hallie & Bahamon





if (y > room_height + sprite_yoffset) {


	y = -(sprite_height / 2) - sprite_yoffset;
	
	


}






