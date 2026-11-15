var _tempframe = ((128 - (round(player_dir / 45) * 16)) mod 128) + frame;
var _tempz = max(1, z * 0.025);

draw_sprite_ext(spr_bal, _tempframe, x, y + 12, 1 / _tempz, -0.6 / _tempz, 0, c_black, 0.4);
draw_sprite_ext(spr_bal, _tempframe, x, y + 8, 1 / _tempz, -0.6 / _tempz, 0, c_black, 0.75);
draw_sprite(spr_bal, _tempframe, x, y - z)


