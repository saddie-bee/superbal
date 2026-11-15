/// @desc Jump and chase the player

x += (obj_player.x - x) * 0.02;
y += (obj_player.y - 64 - y) * 0.02;


timer += 1

frame = 22 + floor(timer * 0.5 mod 16);

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