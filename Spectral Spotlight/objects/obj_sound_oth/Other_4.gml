/// @description Insert description here
// You can write your code in this editor

audio_stop_sound(snd_menu);

if not audio_is_playing(snd_rooms){
	audio_play_sound(snd_rooms, 1, true)
}
