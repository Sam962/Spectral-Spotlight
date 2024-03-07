/// @description Insert description here
// You can write your code in this editor




	
	if (y > room_height + sprite_yoffset) {
    // places position just above to serve as a delay.
    y = -(sprite_height / 2) - sprite_yoffset;

    //horizontal position set to a random value within the room using irandom_range
    x = irandom_range(room_width, sprite_xoffset);
}





