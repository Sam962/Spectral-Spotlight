/// @description Insert description here
// You can write your code in this editor


// Get mouse angle. 
// Subtracting 90 because it points 90 degress away (clockwise) from the actual spot.
var mouse_angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y) - 90;

// Put the beam on top or other objects will not be obscured by darkness
depth = -.01;  //luke has it set to -100

obj_beam.image_angle = mouse_angle;
obj_beam.x = obj_player.x;
obj_beam.y = obj_player.y;
obj_beam.scale = beam_scale; 
	
if (obj_beam.is_flashlight_on) {
	beam_scale -= 0.0005; 
}

