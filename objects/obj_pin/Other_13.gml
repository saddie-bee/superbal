/// @desc Get back up

sprite_index = spr_pin;

timer += 1;
frame = 6 - floor(timer * 0.5);

if (frame <= 0){
	state = 0;
	count = 0;
	timer = -64;
}