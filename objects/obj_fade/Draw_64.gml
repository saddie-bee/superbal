draw_sprite_ext(spr_fade, 0, x, y, 1, 1, 0, c_white, 1 - timer * 0.05);

if (timer > 20){
	instance_destroy();
}