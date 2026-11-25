if (player_defeated){
	x += 1
	y += y_speed
	y_speed += gravity_force;
	//image_xscale += 0.5;
	//image_yscale += 0.5;
	image_angle += 0.5;
	
	if (y_speed <= -10){
		room_restart();
	}
	exit;
}

if (grounded){
	player_state_movement();
} else {
	player_state_airborne();
}

//Collision
var _lay_id = layer_get_id("Tiles_1");
var _map_id = layer_tilemap_get_id(_lay_id);
var _tile = tilemap_get_at_pixel(_map_id, x, y);

if (_tile == 0){
	depth = 444;
}


z_speed -= gravity_force;
x += x_speed;
y += y_speed;
z += z_speed;

if (_tile != 0 && z < 0 && z >= -8){
	grounded = 1
	z_speed *= -0.5;
	
	if floor (z_speed) == 0{
		z_speed = 0;
	}
	
	if z_speed != 0{
		audio_play_sound(Chair_Bounce, 1, false);
	}
	
	z = z_speed;
	jumping = 0;
}



