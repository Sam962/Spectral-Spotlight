// If a surface does not exist, create one
if (!surface_exists(surf)){
    var cam_width = camera_get_view_width(view_camera[0]);
    var cam_height = camera_get_view_height(view_camera[0]);
    surf = surface_create(cam_width, cam_height);
}


surface_set_target(surf);
// Adjust the alpha decimal to change the opacity of the darkness
// 1 would be 100% black
draw_clear_alpha(c_black, .99);

// Get mouse angle. 
// Subtracting 90 because it points 90 degress away (clockwise) from the actual spot.
var mouse_angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y) - 90;


// Shrink the beam as time goes on
beam_scale -= 0.0005; 

// Put the beam on top or other objects will not be obscured by darkness
depth = -100;



gpu_set_blendmode(bm_subtract);
draw_sprite_ext(spr_tempBeam, 0, obj_player.x, obj_player.y, beam_scale, beam_scale, mouse_angle, c_white, 1);
gpu_set_blendmode(bm_normal);


surface_reset_target();
draw_surface(surf, 0, 0);
