/// @desc Drop down

timer += 1;

if (timer < 12){
	frame = floor(timer * 0.5);
} else {
	sprite_index = spr_pin_spin;
	
	if (timer == 12){
		frame = 0;
	}
}


if (spin_vel == 0 && timer >= 128){
	state = 3;
	timer = 0;
}



if (timer >= 24){
	
	if (timer >= 128){
		spin_vel = max (spin_vel - 0.01, 0);
	} else {
		spin_vel = min (spin_vel + 0.01, 2);
	}
	frame += spin_vel;
	
	if (spin_vel > 0.05){
		instance_create_depth(x + 64 + 108 * dsin(floor(frame + 2) * (320/17)) + random_range(-16, 16), y + 128 + 80* dcos(floor(frame + 2) * (320/17)) + random_range(-16, 16), depth - 4, obj_dust_effect);
	}
	
	if (frame >= 17){
		frame = 0;
	}
	
	x += (obj_player.x - 128 - x) * 0.01;
	y += (obj_player.y - 128 - y) * 0.01;
}



