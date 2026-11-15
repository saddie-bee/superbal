function player_state_movement(){
	//Variables
	var _hor = hold_right - hold_left;
	var _vert = hold_down - hold_up;
	var _move_spd = accel_spd;
	
	if (control_lock){
		_hor = 0;
		_vert = 0;
		_move_spd = 0;
	}

	//Friction
	if (sign(x_speed) != _hor && _hor != 0 || sign(y_speed) != _vert && _vert != 0){
		_move_spd = turn_spd;
		
		if (floor(x_speed mod 2) == 0 || floor(y_speed mod 2) == 0 && grounded){
			instance_create_depth(x + random_range(-2, 2), y + random_range(-2, 2), depth + 1, obj_dust_effect);
		}
	}

	//acceleration
	x_speed = clamp(x_speed + _hor * _move_spd, -12, 12);
	y_speed = clamp(y_speed + _vert * _move_spd * 0.75, -8, 8);

	//deceleration
	if (!hold_right && !hold_left){
		x_speed += decel_spd * -sign(x_speed)	
	
		if (round(x_speed) == 0){
			x_speed = 0;
		}
	} 

	if (!hold_up && !hold_down){
		y_speed += decel_spd * 0.75 * -sign(y_speed)	
	
		if (round(y_speed) == 0){
			y_speed = 0;
		}
	} 
	
	if (press_jump){
		grounded = 0;
		z_speed = 6;
	}

	if (hold_right || hold_left){
		player_dir += (((180 - (90 * _hor)) + _hor * _vert * 45) - player_dir) * 0.2;
	} else if (hold_up || hold_down){
		player_dir += ((90 + (_vert * 90)) - player_dir) * 0.2;
	}
}