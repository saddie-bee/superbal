var _tempz = max(1, z * 0.025);

if (state == 2 || state == 3){
	draw_sprite_ext(sprite_index, frame, x, y + 60, 1 / _tempz, 0.6/ _tempz, 0, c_black, 0.4);
	draw_sprite_ext(sprite_index, frame, x, y + 64, 1 / _tempz, 0.6 / _tempz, 0, c_black, 0.75);
} else {
	
	draw_sprite_ext(sprite_index, frame, x, y + 92, 1 / _tempz, -0.6/ _tempz, 0, c_black, 0.4);
	draw_sprite_ext(sprite_index, frame, x, y + 96, 1 / _tempz, -0.6 / _tempz, 0, c_black, 0.75);
}
if (state != 0){
	draw_sprite_ext(sprite_index, frame, x + dsin(timer * 8) * 4, y - z, 1, 1, 0, c_aqua, 0.75);
}

draw_sprite(sprite_index, frame, x, y - z);

if (state != 0){
	draw_sprite_ext(sprite_index, frame, x, y - z, 1, 1, 0, c_red, dsin(timer * 8));
}