/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();

my_spr_idle = Idle
my_spr_walk = MoveRight_png
my_spr_jump = Jump
my_spr_fall = Jump

hspd_max = 5			// maximum left/right speed
//accel = .1				// left/right movement acceleration
jump_max= 2				// strength of upward force
grav_amt= .1	// strength of downward force
//jump_hold = 0 * room_speed	// time you can hold for a higher jump
//num_jump = 1			// number of jumps before needing to touch ground
jump_pressed_timer = 0	// number of frames to save the "jump" input, aka "input caching"
coyote_time = 2			// number of frames before you fall when stepping off platform
deceleration = 0.125