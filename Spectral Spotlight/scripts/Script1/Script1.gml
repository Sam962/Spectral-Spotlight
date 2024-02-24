// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initalization(){
// initialization_script
if (!surface_exists(global.surf)) {
    var cam_width = camera_get_view_width(view_camera[0]);
    var cam_height = camera_get_view_height(view_camera[0]);
    global.surf = surface_create(cam_width, cam_height);
}

}