// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inflict_damage(damage){
 //collisions will do x damage to player, x representing the int parameter in this function.
 
 obj_player.health -= damage;
 
 if (obj_player.health > 0) {
	instance_destroy(); //if health is not 0, enemy is destroyed upon collision
 
 } else {
	instance_destroy(); //destroy enemy, the player, and results in game over.
	instance_destroy(obj_player)
	instance_destroy(obj_timer) //remove timer
	room_goto(loseScreen);
	
 }




}