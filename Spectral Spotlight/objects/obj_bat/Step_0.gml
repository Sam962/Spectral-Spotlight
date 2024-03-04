/// @description Insert description here
// You can write your code in this editor
x = clamp(x, sprite_width/2, room_width-sprite_width/2);
y = clamp(y, sprite_height/2, room_height-sprite_height/2);
speed = 4;

if (change_dir == true){
	if (instance_exists(obj_player)){
		change_dir = false;
		direction = random(360);
		alarm[0] = room_speed * 3;
	} 
} 


if (place_meeting(x, y, obj_wall)) {
    direction = random(360);
}


