show_debug_message(y);


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

if (y < (-0.3 * x + 640) || !place_meeting(x, y, obj_map)){
	x_speed *= -1;
	y_speed *= -1;
	
		
	if (abs(x_speed) < 3){
		x_speed = sign(x_speed) * 3;
	}
		
	if (abs(y_speed) < 3){
		y_speed = sign(y_speed) * 3;
	}
	
	x += x_speed;
	y += y_speed;
}

z_speed -= gravity_force;
x += x_speed;
y += y_speed;
z += z_speed;

if (z < 0){
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



