/// @description Insert description here
// You can write your code in this editor



for (var i = 0; i < 5; i++) {
    var rand_x = irandom_range(0, room_width);
    var rand_y = irandom_range(0, room_height);
    instance_create_layer(rand_x, rand_y, "Instances", obj_crate);
}





