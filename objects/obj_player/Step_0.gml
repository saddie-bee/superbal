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
	
	z = z_speed;
	jumping = 0;
}



