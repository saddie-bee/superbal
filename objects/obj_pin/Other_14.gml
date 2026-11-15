/// @desc Knock back

timer += 1;
frame = 6 - floor(timer * 0.5);

if (frame <= 0){
	state = 0;
	count = 0;
	timer = 0;
}