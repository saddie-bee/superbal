if (grounded){
	player_state_movement();
} else {
	player_state_airborne();
}

if (y < (-0.3 * x + 640)){
	x_speed *= -1;
	y_speed *= -1;
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



