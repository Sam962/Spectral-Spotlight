/// @description Insert description here
// You can write your code in this editor

hp -= 1

if (hp <= 0)
{

	random_ = irandom_range(1, 5);

 if (random_ = 1){
	instance_create_depth(x, y, 0, obj_battery);
 }

 if (random_ = 2){
	instance_create_depth(x, y, 0, obj_ghost);
 }
 
 if (random_ = 3){
	//nothing
 }
 
 if (random_ = 4){
	instance_create_depth(x, y, 0, obj_health)
 
 }
 
 if (random_ = 5){
	instance_create_depth(x, y, 0, obj_coin)
 
 }
}
 instance_destroy();






