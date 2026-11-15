x_speed = 0;
y_speed = 0;

//values
accel_spd = 0.15;
decel_spd = 0.1;
turn_spd = 0.3;
gravity_force = 1;
jumping = 0;

//Input
hold_right = false;
hold_left = false;
hold_up = false;
hold_down = false;
hold_jump = false;
control_lock = false;

player_dir = 0;

//Camera
cam = view_camera[0];
	
cam_w = camera_get_view_width(cam);
cam_h = camera_get_view_height(cam);
cam_display_w = cam_w;
cam_display_h = cam_h;
	
cam_x = x;
cam_y = y;

cam_spd = 0.1;

//Animation
frame = 0;
grounded = true;

//Recording
record_pos = [x, y]

//Z
z = 0;
z_speed = 0;

//Health
cur_health = 100;
visual_health = 100;

image_speed = 0;
