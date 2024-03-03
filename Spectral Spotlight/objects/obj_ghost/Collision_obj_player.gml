/// @description Insert description here
// You can write your code in this editor


instance_destroy(other);
//there should be some logic for player health. If health reaches 0, player is destroyed and
//transition to lose screen.

room_goto(loseScreen);
instance_destroy(obj_timer)