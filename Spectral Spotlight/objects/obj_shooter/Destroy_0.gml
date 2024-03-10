/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x, y, "Instances", obj_coin);
instance_create_layer(x + 7, y + 7, "Instances", obj_coin);
audio_play_sound(snd_shoterdy,1, false);