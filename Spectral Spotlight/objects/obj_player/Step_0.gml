/// @description Insert description here
// You can write your code in this editor

// clamp the player within the room boundaries
x = clamp(x, sprite_width/2, room_width-sprite_width/2);
//clamp function for vertical boundary
y = clamp(y, sprite_height/2, room_height-sprite_height/2);

var _left = keyboard_check(ord("A"));   //movement inputs
var _right = keyboard_check(ord("D"));  //the 'speed' of 4 pixels has been set stored in my_speed in the Create
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

var _xinput = _right - _left;
var _yinput = _down - _up;

// stores the intended position based on input
var default_x = x + _xinput * my_speed;
var default_y = y + _yinput * my_speed;

// horizontal movment and collision
 horizontal_collision = place_meeting(default_x, y, obj_wall);
if (!horizontal_collision) {
    x = default_x;
}

// vertical movement and collision
 vertical_collision = place_meeting(x, default_y, obj_wall);
if (!vertical_collision) {
    y = default_y;
}






if (mouse_check_button_pressed(mb_left)) {
    // Toggle flashlight
    obj_beam.is_flashlight_on = !obj_beam.is_flashlight_on;
	show_debug_message("CLICK!!!");
}


