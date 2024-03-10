/// @description Insert description here
// You can write your code in this editor

if (obj_player.health < 100){
obj_player.health += 25
}else{
obj_player.health = 100;

}
audio_play_sound(snd_health, 1, false)


instance_destroy();





