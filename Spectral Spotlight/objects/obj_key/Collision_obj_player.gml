/// @description Insert description here
// You can write your code in this editor

if (obj_player.coins >= obj_key.price){	
	obj_player.coins -= obj_key.price
	obj_scoreboard.key_bought = true;
	instance_destroy()
}

