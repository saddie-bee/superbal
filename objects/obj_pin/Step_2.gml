//Player bounce
var _cancollide = true;

if ((-0.5 * obj_player.x + (y - -0.5 * x + 64)) > obj_player.y){
	_cancollide = false;
	depth = obj_player.depth - 1;
}

if ((-0.5 * obj_player.x + (y - -0.5 * x + 96)) < obj_player.y){
	depth = obj_player.depth + 1
}

if (place_meeting(x, y, obj_player) && !bounce_cooldown && _cancollide) {
	with (obj_player){
		var _pythstore = (sqr(x - record_pos[1]) + sqr((y - record_pos[2])) * 4);
		var _dist = sign(_pythstore) * sqrt(abs(_pythstore));
		x_speed *= -1.5;
		y_speed *= -1.5;
		
		if (abs(x_speed) < 3){
			x_speed = sign(x_speed) * 3;
		}
		
		if (abs(y_speed) < 3){
			y_speed = sign(y_speed) * 3;
		}
		
		control_lock = true;
	}
	
	bounce_cooldown = 1;
}

if (bounce_cooldown){
	obj_player.x_speed *= 1.5;
	obj_player.y_speed *= 1.5;
			
	if (abs(obj_player.x_speed) < 3){
		obj_player.x_speed = sign(obj_player.x_speed) * 3;
	}
		
	if (abs(obj_player.y_speed) < 3){
		obj_player.y_speed = sign(obj_player.y_speed) * 3;
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
		
		repeat(2){
			instance_create_depth(x + random_range(12, 18), y + 96 + random_range(-8, 8), depth + 4, obj_dust_effect);
		}
	
		repeat(2){
			instance_create_depth(x + random_range(-12, -18), y + 96 + random_range(-8, 8), depth + 4, obj_dust_effect);
		}
	
		repeat(2){
			instance_create_depth(x + random_range(-8, 8), y + 96 + random_range(12, 18), depth + 4, obj_dust_effect);
		}
	
		repeat(2){
			instance_create_depth(x + random_range(-8, 8), y + 96 + random_range(-12, -18), depth + 4, obj_dust_effect);
		}
	
	}
	grounded = 1;
	z_speed *= -0.5;
	
	if floor (z_speed) == 0{
		z_speed = 0;
	}
	
	z = z_speed;
}

event_user(state);