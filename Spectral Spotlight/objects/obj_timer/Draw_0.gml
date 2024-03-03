/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white)
draw_set_font(ft_menu)
draw_set_halign(fa_left) //temporary position. May change when the rest of UI is added
draw_set_valign(fa_top) //temp

var t = ""
t += string(minutes)
t += ":"

if (seconds > 9){
t += "" + string(seconds)}

if (seconds < 10){
t += "0" + string(seconds)}

t += "."
t += string(tenth_sec)

draw_text(5,5, t);


