/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player){
	
	depth = -101;
	
	//health bar
	draw_healthbar(8, 70, 256, 100, obj_player.health, c_black, c_red, c_red, 0, true, true);
	
	// Coin counter
	draw_text(1650, 10, "Coins:" + string(obj_player.coins));

	// If the key has been obtained, draw it in the top corner
	if (key_bought){
		draw_sprite(spr_key, -1,  1850, 100);
	} 

} 






