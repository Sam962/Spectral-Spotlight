// Spawn enemies randomly on one of the four edges
// Remove any of the cases to prevent spawning from that direction.
var rand = choose(0, 1, 2, 3);

if (rand == 0){ // Spawn right edge
	x = room_width;
	y = random(room_height);
} else if(rand == 1){ // Spawn top edge
	y = 0;
	x = random(room_width);
} else if (rand == 2){ // Spawn left edge
	x = 0;
	y = random(room_height);
}else { // Spawn bottom edge
	y = room_height;
	x = random(room_width);
}

// Edit the variable 'objectType' in the spawner instance to change the spawned object
instance_create_layer(x, y, "Instances", object_type);

// Edit 'spawnInterval' in spawner instance to change the speed at which the spanwer
// spawns. A value of 30 should be equivalent to 1 sec.
alarm[0] = spawn_interval;
