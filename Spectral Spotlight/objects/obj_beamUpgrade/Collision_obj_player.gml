/// @description Reduces beam shrink speed 
// You can write your code in this editor


if (obj_player.coins >= obj_beamUpgrade.price){	
	obj_player.coins -= obj_beamUpgrade.price
	instance_destroy()
	
	obj_beam.beam_shrink_scale = .002
}