// Draw Event of obj_beam

// If a surface does not exist, create one
if (!surface_exists(surf)){                      //There were issues with the togglable when this was in the flashlight_on code block where the room defaults to regular lighting.
    var cam_width = camera_get_view_width(view_camera[0]);  //To prevent this, I moved the logic OUTSIDE so the darkness persists.
    var cam_height = camera_get_view_height(view_camera[0]);
    surf = surface_create(cam_width, cam_height);
}

surface_set_target(surf);
// Adjust the alpha decimal to change the opacity of the darkness
// 1 would be 100% black
draw_clear_alpha(c_black, .50);  // Draw darkness onto the surface


// Setting the beam to depth -100 ensures other objects will be obscured by darkness
// Moved outside of the if block, otherwise darkness will appear on first click
// If the UI appears to dark, set the depth of those lower than this value.
depth = -100;


if (is_flashlight_on and instance_exists(obj_player)) {
   

    // Get mouse angle. 
    // Subtracting 90 because it points 90 degress away (clockwise) from the actual spot.
    var mouse_angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y) - 90;

    // Shrink the beam as time goes on
    beam_scale -= beam_shrink_scale; 

	if (beam_scale >= 0){
	    gpu_set_blendmode(bm_subtract);
		obj_beam.x = obj_player.x;
		obj_beam.y = obj_player.y;
		obj_beam.image_angle = mouse_angle;
		obj_beam.image_xscale = beam_scale
		obj_beam.image_yscale = beam_scale
	  
	    draw_sprite_ext(obj_beam.sprite_index, 0, obj_player.x, obj_player.y, beam_scale, beam_scale, mouse_angle, c_white, 1);
	    gpu_set_blendmode(bm_normal);
	}
	
   
}

  surface_reset_target();
  draw_surface(surf, 0, 0);
