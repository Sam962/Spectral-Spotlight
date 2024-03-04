/// @description Insert description here
// You can write your code in this editor


event_inherited()


if (instance_exists(obj_player) and can_shoot = true){
	can_shoot = false;
	instance_create_layer(obj_shooter.x, obj_shooter.y, "Instances", obj_bullet);
	alarm[0] = room_speed * 1;
}


