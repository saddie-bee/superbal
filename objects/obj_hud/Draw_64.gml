draw_rectangle_colour(19, 20, 172, 60, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);

draw_rectangle_colour(19, 20, 19 + (172 - 19) * obj_pin.visual_health * 0.01, 60, c_aqua, c_aqua, c_aqua, c_aqua, false);

draw_rectangle_colour(787, 388, 940, 428, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);

draw_rectangle_colour(787, 388, 787 + (940 - 787) * obj_player.visual_health * 0.01, 428, c_aqua, c_aqua, c_aqua, c_aqua, false);

draw_sprite(spr_healthbar, 0, 0, 0);