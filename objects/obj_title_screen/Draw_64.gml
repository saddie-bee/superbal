timer += 1


draw_sprite(spr_title_screen, 3, 0, 0);
draw_sprite(spr_title_screen, 1, 0, 0);

if (game_start){
	if (timer mod 8 < 4){
		draw_sprite(spr_title_screen, 0, 0, titley);
	}
	
	if (timer > 40){
		room_goto(Room1);
	}
	
	exit;
}

if (timer > 64){
	titley += (0 - titley) * 0.75
	draw_sprite(spr_title_screen, 0, 0, titley);
	
	if (keyboard_check_pressed(vk_space)){
		game_start = true;
		timer = 0;
	}
}

//draw_sprite_ext(spr_title_screen, 3, 0, 0, 1, 1, 0, c_white, min(1, timer * 0.2));