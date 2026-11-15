function player_state_airborne(){
	//Variables
	var _hor = hold_right - hold_left;
	var _vert = hold_down - hold_up;
	var _move_spd = accel_spd;
	
	
	//acceleration
	x_speed = clamp(x_speed + _hor * _move_spd * 0.75, -8, 8);
	y_speed = clamp(y_speed + _vert * _move_spd * 0.75 * 0.75, -4, 4);
	
	
	if (hold_jump && jumping < 11){
		z_speed += 1;
		jumping += 1;
	}
	
	
	if (!hold_jump){
		jumping = min(11, jumping);
	}
}