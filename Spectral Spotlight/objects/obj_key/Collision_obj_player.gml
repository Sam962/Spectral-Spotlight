/// @description Insert description here
// You can write your code in this editor

if (obj_player.coins >= obj_key.price){	
	obj_player.coins -= obj_key.price
	obj_scoreboard.key_bought = true;
	instance_destroy()
	instance_destroy(other)
	instance_destroy(obj_timer)
	room_goto(winScreen); //premature exit
}

