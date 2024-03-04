/// @description Insert description here
// You can write your code in this editor


var _left = keyboard_check(ord("A"));   //movement inputs
var _right = keyboard_check(ord("D"));  //the 'speed' of 4 pixels has been set stored in my_speed in the Create
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

var _xinput = _right - _left;
var _yinput = _down - _up;

move_and_collide(_xinput * 2, _yinput * 2, obj_lockeddoor) // after door is ticked SOLID
//Play around with values to find an appropriate slide spd. 2 works.






