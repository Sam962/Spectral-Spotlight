/// @description Insert description here
// You can write your code in this editor


if (keyboard_check(ord("1"))){

obj_player.health = 10000 //"infinite health" command

}

if (keyboard_check(ord("2"))){

obj_player.coins += 50 //unlimited money

}


if (keyboard_check(ord("3"))){

obj_player.my_speed += 10 //speed cheat

}

if (keyboard_check_pressed(ord("F"))) {
    // Freeze the ghost's speed
    obj_ghost.speed = 0;
    
}



