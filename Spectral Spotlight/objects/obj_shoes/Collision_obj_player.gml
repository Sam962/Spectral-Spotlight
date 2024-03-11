/// @description Insert description here
// You can write your code in this editor


if (obj_player.coins >= obj_shoes.price){	
	obj_player.coins -= obj_shoes.price
	instance_destroy()
	
	// Increase player speed
	obj_player.my_speed = 12
	
	// Add dash ability?
	
}