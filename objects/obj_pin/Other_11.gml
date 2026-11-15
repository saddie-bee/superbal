/// @desc Jump and chase the player

if (abs(obj_player.x - x) > 5){
	x_speed += (sign(obj_player.x - x));
}

if (abs(obj_player.y - 64 - y) > 5){
	y_speed += (sign(obj_player.y - 64 - y));
}

x_speed = clamp(x_speed, -8, 8);
y_speed = clamp(y_speed, -8 * 0.75, 8 * 0.75);
x += x_speed;
y += y_speed;

timer += 1

frame = 22 + floor(timer * 0.5 mod 16);

if (grounded){
		repeat(4){
			instance_create_depth(x + random_range(0, 18), y + 96 + random_range(-8, 8), depth - 444, obj_dust_effect);
		}
		
		repeat(4){
			instance_create_depth(x + random_range(0, -18), y + 96 + random_range(-8, 8), depth - 444, obj_dust_effect);
		}
}

if (grounded && count > 0){
	state = 0;
	count += 1;
	
	
	if (count >= 5){
		state = 0;
		count = 5;
	}
	
}


if (timer > 512){
	state = 0;
	timer = 0;
	count = 1;
}