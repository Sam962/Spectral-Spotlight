// Calculate the angle between player and mouse cursor
var mouse_angle = point_direction(x, y, mouse_x, mouse_y);

// Sets the sprite direction based on the angle
if (mouse_angle > 45 && mouse_angle <= 135) {
    sprite_index = spr_playerUp; // facing down
} else if (mouse_angle > 135 && mouse_angle <= 225) {
       // Flip the sprite horizontally
    sprite_index = spr_playerRight; // facing right
	image_xscale = -1; // flips sprite horizontally
} else if (mouse_angle > 225 && mouse_angle <= 315) {
    sprite_index = spr_playerDown; //facing up
} else {
    sprite_index = spr_playerRight; //facing right
	image_xscale = 1; //restored to default
}

// Clamping the player within the room boundaries
x = clamp(x, sprite_width / 2, room_width - sprite_width / 2);
y = clamp(y, sprite_height / 2, room_height - sprite_height / 2);

var _left = keyboard_check(ord("A"));   //movement inputs
var _right = keyboard_check(ord("D"));  
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

 

// Stop the animation when not moving - I think its better to maintain the direction
// Faced with idle rather than always facing forward
if (keyboard_check(ord("W")) or keyboard_check(ord("A")) or keyboard_check(ord("S")) or keyboard_check(ord("D"))){
	image_speed = 1;	
} else {
	image_index = 0;
	image_speed = 0;
}

var _xinput = _right - _left;
var _yinput = _down - _up;

// stores the intended position based on input
var default_x = x + _xinput * my_speed;
var default_y = y + _yinput * my_speed;

// horizontal movement and collision
var horizontal_collision = place_meeting(default_x, y, obj_wall);
if (!horizontal_collision) {
    x = default_x;
}

// vertical movement and collision
var vertical_collision = place_meeting(x, default_y, obj_wall);
if (!vertical_collision) {
    y = default_y;
}

// Toggle flashlight
if (mouse_check_button_pressed(mb_left)) {
    obj_beam.is_flashlight_on = !obj_beam.is_flashlight_on;
    show_debug_message("CLICK!!!");
}
