/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)
if (instance_exists(obj_key)){
	draw_text(obj_key.x - 300, obj_key.y + 30, "ESCAPE:"+ string(obj_key.price) + " Coins");
}

if (instance_exists(obj_beamUpgrade)){
	draw_text(obj_beamUpgrade.x - 310 , obj_beamUpgrade.y + 30, "Beam Upgrade: " + string(obj_beamUpgrade.price) + " Coins");
}

if (instance_exists(obj_shoes)){
	draw_text(obj_shoes.x - 135, obj_shoes.y + 30, string(obj_shoes.price) + " Coins");
}

