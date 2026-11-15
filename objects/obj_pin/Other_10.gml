/// @desc Idle

timer += 1;

sprite_index = spr_pin;

if (timer >= 128){
	
	if (count < 5){
		state = 2;
		timer = 0;
		//z_speed = 14;
		grounded = 0;
	} else {
		state = 2;
		timer = 0;
	}
}