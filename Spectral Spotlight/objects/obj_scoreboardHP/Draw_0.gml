/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player){

draw_healthbar(8, 70, 256, 100, obj_player.health, c_black, c_red, c_red, 0, true, true);
draw_text(1600, 25, "Coins: " + string(obj_player.coins));
} //health bar

//add the scoreboard logic here:





