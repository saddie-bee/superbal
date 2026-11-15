player_camera_movement();

var _pythstore = (sqr(x - record_pos[1]) + sqr((y - record_pos[2])) * 4);
var _dist = sign(_pythstore) * sqrt(abs(_pythstore));


frame += abs(_dist) * 0.1;
frame = frame mod 15;

visual_health += (cur_health - visual_health) * 0.2;
