/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(ord("W"))){
	y -= 4
}
if (keyboard_check(ord("S"))){
	y += 4
}
if (keyboard_check(ord("A"))){
	x -= 4
}
if (keyboard_check(ord("D"))){
	x += 4
}

if (mouse_check_button_pressed(mb_left)) {
    // Toggle flashlight
    obj_beam.is_flashlight_on = !obj_beam.is_flashlight_on;
	show_debug_message("CLICK!!!");
}