//Player bounce
var _cancollide = true;

if (obj_player.cur_health <= 0){
	if (obj_player.player_defeated = false){
		obj_player.y_speed = -14;
		obj_player.camera_shake = 40;
		audio_play_sound(sfx_test, 1, false);
		obj_player.player_defeated = true;
	}
	exit;
}

if ((-0.5 * obj_player.x + (y - -0.5 * x + 64)) > obj_player.y){
	_cancollide = false;
	depth = obj_player.depth - 1;
}

if ((-0.5 * obj_player.x + (y - -0.5 * x + 96)) < obj_player.y){
	depth = obj_player.depth + 1
}

if (place_meeting(x, y, obj_player) && !bounce_cooldown && _cancollide && grounded) {
	with (obj_player){
		var _pythstore = (sqr(x - record_pos[1]) + sqr((y - record_pos[2])) * 4);
		var _dist = sign(_pythstore) * sqrt(abs(_pythstore));
		x_speed *= -1.5;
		y_speed *= -1.5;
		
		instance_create_depth(x + x_speed + random_range(-8, 8), y + y_speed + random_range(-8, 8), depth - 1, obj_dust_effect);
		
		camera_shake = 20;
		
		if (other.state == 0 && !grounded){
			other.cur_health -= 25;
			
			if z_speed != 0{
				audio_play_sound(Boss_Hit_2, 1, false);
			}
			
			if (other.cur_health <= 0){
				room_goto(Ending);
			}
			
			instance_create_depth(x + x_speed + random_range(-8, 8), y + y_speed + random_range(-8, 8), depth - 1, obj_dust_effect);
		} else {
			cur_health -= 5;
		}
		
		if (abs(x_speed) < 3){
			x_speed = sign(x_speed) * 3;
		}
		
		if (abs(y_speed) < 3){
			y_speed = sign(y_speed) * 3;
		}
		
		//control_lock = true;
	}
	
	bounce_cooldown = 1;
}

if (bounce_cooldown){
	
	with (obj_player){
		x_speed *= 1.5;
		y_speed *= 1.5;
			
		grounded = true;	
			
		if (abs(x_speed) < 6){
			x_speed = sign(x_speed) * 6;
			if (x_speed == 0){
				x_speed = 6;
			}
			
			x += x_speed;
		
		}
		
		
		if (abs(y_speed) < 6){
			y_speed = sign(y_speed) * 6;
			if (y_speed == 0){
				y_speed = 6;
			}
			
			y += y_speed;
		}
	}
}



if !(place_meeting(x, y, obj_player)){
	obj_player.control_lock = false;
	bounce_cooldown = 0;
}

z_speed -= gravity_force;
z += z_speed;

if (z < 0){
	if (abs(z_speed) >= 4){
		
		obj_player.camera_shake = 20;
		
		repeat(4){
			instance_create_depth(x + random_range(12, 18), y + 80 + random_range(-8, 8), depth - 444, obj_dust_effect);
		}
	
		repeat(4){
			instance_create_depth(x + random_range(-12, -18), y + 80 + random_range(-8, 8), depth - 444, obj_dust_effect);
		}
	
		repeat(4){
			instance_create_depth(x + random_range(-8, 8), y + 80 + random_range(12, 18), depth - 444, obj_dust_effect);
		}
	
		repeat(4){
			instance_create_depth(x + random_range(-8, 8), y + 80 + random_range(-12, -18), depth - 444, obj_dust_effect);
		}
	
	}
	grounded = 1;
	z_speed *= -0.5;
	
	if floor (z_speed) == 0{
		z_speed = 0;
	}
	
	if z_speed != 0{
		audio_play_sound(Chair_Bounce, 1, false);
	}
	
	z = z_speed;
}

visual_health += (cur_health - visual_health) * 0.2;

event_user(state);