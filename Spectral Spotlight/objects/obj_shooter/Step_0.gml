/// @description Insert description here
// You can write your code in this editor


event_inherited()


if (instance_exists(obj_player) && can_shoot) {
    can_shoot = false;
    instance_create_layer(x, y, "Instances", obj_bullet);
    alarm[0] = room_speed * 1;
}

