var _tempz = max(1, z * 0.025);
var _storedepth = depth

depth = -4
if (state == 2 || state == 3){
	draw_sprite_ext(sprite_index, frame, x, y + 60, 1 / _tempz, 0.6/ _tempz, 0, c_black, 0.4);
	draw_sprite_ext(sprite_index, frame, x, y + 64, 1 / _tempz, 0.6 / _tempz, 0, c_black, 0.75);
} else {
	
	draw_sprite_ext(sprite_index, frame, x, y + 92, 1 / _tempz, -0.6/ _tempz, 0, c_black, 0.4);
	draw_sprite_ext(sprite_index, frame, x, y + 96, 1 / _tempz, -0.6 / _tempz, 0, c_black, 0.75);
}

depth = _storedepth
draw_sprite(sprite_index, frame, x, y - z);