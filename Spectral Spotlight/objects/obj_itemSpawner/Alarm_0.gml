/// @description Insert description here
// You can write your code in this editor





x = random(room_width);
y = random(room_height);


// Edit the variable 'objectType' in the spawner instance to change the spawned object
instance_create_layer(x, y, "Instances", object_type);

// Edit 'spawnInterval' in spawner instance to change the speed at which the spanwer
// spawns. A value of 30 should be equivalent to 1 sec.
alarm[0] = spawn_interval;
