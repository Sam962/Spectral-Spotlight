/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_key)){
	draw_text(obj_key.x - 135, obj_key.y + 30, string(obj_key.price) + " Coins");
}

if (instance_exists(obj_beamUpgrade)){
	draw_text(obj_beamUpgrade.x - 135, obj_beamUpgrade.y + 30, string(obj_beamUpgrade.price) + " Coins");
}
