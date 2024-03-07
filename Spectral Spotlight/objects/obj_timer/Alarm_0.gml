/// @description Insert description here
// You can write your code in this editor

tenth_sec -= 1

if tenth_sec == -1 {
tenth_sec = 9   //decrements seconds by one
seconds -=1

}





if seconds == -1 {   //decrements minutes by one
seconds = 59
minutes -=1

}

//stop timer at 0

if !(seconds == 0 && minutes == 0 && tenth_sec == 0){
alarm[0] = 6

} else {
//once timer hits 0
	instance_destroy(obj_player)
	instance_destroy(obj_timer)
	room_goto(winScreen); // temporrary.

}

