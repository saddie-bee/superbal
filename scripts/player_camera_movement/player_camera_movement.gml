function player_camera_movement(){
	var _cam_orient_x = 0.4 * (obj_pin.x - obj_player.x)
	var _cam_orient_y = 0.4 * (obj_pin.y - obj_player.y)
	
	cam_x += ((obj_player.x + 16 * obj_player.x_speed + _cam_orient_x - (cam_w / 2) - cam_x) * cam_spd);
	cam_y += ((obj_player.y + 16 * obj_player.y_speed + _cam_orient_y - (cam_h / 2) - cam_y) * cam_spd / 2);
	camera_shake *= -0.8;
	if (round(camera_shake) == 0){
		camera_shake = 0;
	}
	
	var _size = 0.075;
	var _pythstore = (sqr(obj_player.x - record_pos[1]) + sqr((obj_player.y - record_pos[2])) * 4);
	var _dist = max(1, _size * sign(_pythstore) * sqrt(abs(_pythstore)));
	
	cam_display_w += (((cam_w * _dist) - cam_display_w) * 0.01);
	cam_display_h += (((cam_h * _dist) - cam_display_h) * 0.01);
	
	camera_set_view_pos(cam, cam_x, cam_y + camera_shake);
	
	if (!obj_player.player_defeated){
		camera_set_view_size(cam, cam_display_w, cam_display_h);
	}
}